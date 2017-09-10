// -*- C++ -*-
/*!
 * @file  DUALSHOCK4_RTC.cpp
 * @brief GameController_with_DualShock4
 * @date $Date$
 *
 * $Id$
 */


#include "DUALSHOCK4_RTC.h"
#pragma comment(lib, "winmm.lib")
#include <mmsystem.h> //�Q�[���R���g���[���[�g�p�̂��߂ɃC���N���[�h
#include <windows.h>  //��Ɠ��l�ɃQ�[���R���g���[���[�g�p�̂��߂Ɏg�p

JOYINFOEX js0; //��ڂ̃Q�[���p�b�h�ɐڑ���,��ԓǂݎ��(�\����)

#define AN_MAX 32767�@//�A�i���O�X�e�B�b�N�ő�l
#define AN_MIN -32767 //�A�i���O�X�e�B�b�N�ŏ��l
#define AN_X_ZERO 0.2 //�[���|�W�V����X
#define AN_Y_ZERO 0.2 //�[���|�W�V����Y

//�ϐ�
double an_LX = 0; //���A�i���O�X�e�B�b�NX�l
double an_LY = 0; //���A�i���O�X�e�B�b�NY�l
double an_RX = 0; //�E�A�i���O�X�e�B�b�NX�l
double an_RY = 0; //�E�A�i���O�X�e�B�b�NY�l
double an_L2 = 0;
double an_R2 = 0;
double POV[2] = {0, 0}; //�\���L�[�l

static const int An_Max =  32767;   //�A�i���O�X�e�B�b�N�ő�l
static const int An_Min = -32767;   //�A�i���O�X�e�B�b�N�ŏ��l
static const float An_X_Zero = 0.2; //�[���|�W�V����X
static const float An_Y_Zero = 0.2; //�[���|�W�V����Y


// Module specification
// <rtc-template block="module_spec">
static const char* dualshock4_rtc_spec[] =
  {
    "implementation_id", "DUALSHOCK4_RTC",
    "type_name",         "DUALSHOCK4_RTC",
    "description",       "GameController_with_DualShock4",
    "version",           "1.0.0",
    "vendor",            "UoA",
    "category",          "Controlle",
    "activity_type",     "PERIODIC",
    "kind",              "DataFlowComponent",
    "max_instance",      "1",
    "language",          "C++",
    "lang_type",         "compile",
    ""
  };
// </rtc-template>

/*!
 * @brief constructor
 * @param manager Maneger Object
 */
DUALSHOCK4_RTC::DUALSHOCK4_RTC(RTC::Manager* manager)
    // <rtc-template block="initializer">
  : RTC::DataFlowComponentBase(manager),
    m_buttonOut("Button", m_button),
    m_analogOut("Analog", m_analog)

    // </rtc-template>
{
}

/*!
 * @brief destructor
 */
DUALSHOCK4_RTC::~DUALSHOCK4_RTC()
{
}



RTC::ReturnCode_t DUALSHOCK4_RTC::onInitialize()
{
  // Registration: InPort/OutPort/Service
  // <rtc-template block="registration">
  // Set InPort buffers
  
  // Set OutPort buffer
  addOutPort("Button", m_buttonOut);
  addOutPort("Analog", m_analogOut);
  
  m_analog.data.length(11);
  // Set service provider to Ports
  
  // Set service consumers to Ports
  
  // Set CORBA Service Ports
  
  // </rtc-template>

  // <rtc-template block="bind_config">
  // </rtc-template>
  
  return RTC::RTC_OK;
}


RTC::ReturnCode_t DUALSHOCK4_RTC::onFinalize()
{
  return RTC::RTC_OK;
}


RTC::ReturnCode_t DUALSHOCK4_RTC::onStartup(RTC::UniqueId ec_id)
{
  return RTC::RTC_OK;
}


RTC::ReturnCode_t DUALSHOCK4_RTC::onShutdown(RTC::UniqueId ec_id)
{
  return RTC::RTC_OK;
}


RTC::ReturnCode_t DUALSHOCK4_RTC::onActivated(RTC::UniqueId ec_id)
{
  return RTC::RTC_OK;
}


RTC::ReturnCode_t DUALSHOCK4_RTC::onDeactivated(RTC::UniqueId ec_id)
{
  return RTC::RTC_OK;
}


RTC::ReturnCode_t DUALSHOCK4_RTC::onExecute(RTC::UniqueId ec_id)
{
	js0.dwSize = sizeof(JOYINFOEX); //�������̊m�� (onInitialize�ł�������)
	js0.dwFlags = JOY_RETURNALL; //�t���O�̐ݒ�
	
	// (�W���C�X�e�B�b�N��id, JOYINFOEX�\���̂̃A�h���X)
	//�֐������������ JOYERR_NOERROR���Ԃ�
	//     ���s����� �G���[���Ԃ�
	joyGetPosEx(0,&js0);
	 
	an_LX = ((double)(js0.dwXpos) - An_Max); // -32767 ~ 32767 
	//�A�i���O�l�̍ő���z�����ꍇ AN_MAX(32767)
	if(an_LX > An_Max){
		an_LX = An_Max;
	}
	//�A�i���O�l�̍ŏ����z�����ꍇ AN_MIN(-32767)
	if (an_LX < An_Min)
	{
		an_LX = An_Min;
	}
	an_LX = an_LX / An_Max; //-1.0 ~ 1.0 �͈̔͂ɐ��K��
	
	// -0.2 ~ 0.2�͈̔͂ɂ���ꍇ��0�Ƃ���
	if (an_LX < An_X_Zero  && an_LX > -An_X_Zero)
	{
		an_LX = 0;
	}

	an_LY = ((double)(js0.dwYpos) - An_Max);
	//�A�i���O�l�̍ő���z�����ꍇ AN_MAX(32767)
	if (an_LY > An_Max){
		an_LY = An_Max;
	}
	////�A�i���O�l�̍ŏ����z�����ꍇ AN_MIN(-32767)
	if (an_LY < An_Min)
	{
		an_LY = An_Min;
	}
	an_LY = an_LY / An_Max; //-1.0 ~ 1.0 �͈̔͂ɐ��K��

	// -0.2 ~ 0.2�͈̔͂ɂ���ꍇ��0�Ƃ���
	if (an_LY < An_Y_Zero  && an_LY > -An_Y_Zero)
	{
		an_LY = 0;
	}



	an_RX = ((double)(js0.dwZpos) - An_Max);
	//�A�i���O�l�̍ő���z�����ꍇ AN_MAX(32767)
	if (an_RX > An_Max){
		an_RX = An_Max;
	}
	////�A�i���O�l�̍ŏ����z�����ꍇ AN_MIN(-32767)
	if (an_RX < An_Min)
	{
		an_RX = An_Min;
	}
	an_RX = an_RX / An_Max; //-1.0 ~ 1.0 �͈̔͂ɐ��K��

	// -0.2 ~ 0.2�͈̔͂ɂ���ꍇ��0�Ƃ���
	if (an_RX < An_X_Zero  && an_RX > -An_X_Zero)
	{
		an_RX = 0;
	}

	an_RY = ((double)(js0.dwRpos) - An_Max);

	//�A�i���O�l�̍ő���z�����ꍇ AN_MAX(32767)
	if (an_RY > An_Max){
		an_RY = An_Max;
	}
	////�A�i���O�l�̍ŏ����z�����ꍇ AN_MIN(-32767)
	if (an_RY < An_Min)
	{
		an_RY = An_Min;
	}
	an_RY = an_RY / An_Max; //-1.0 ~ 1.0 �͈̔͂ɐ��K��

	// -0.2 ~ 0.2�͈̔͂ɂ���ꍇ��0�Ƃ���
	if (an_RY < An_Y_Zero  && an_RY > -An_Y_Zero)
	{
		an_RY = 0;
	}

	//�\���L�[�̐ݒ�
	//��������Ă��Ȃ�
	if (js0.dwPOV == 65535){
		POV[0] = 0;
		POV[1] = 0;
	}
	//��
	else if (js0.dwPOV == 0){
		POV[0] = -1;
		POV[1] = 0;
	}
	//�E��
	else if (js0.dwPOV == 4500){
		POV[0] = -1;
		POV[1] = 1;
	}
	//�E
	else if (js0.dwPOV == 9000){
		POV[0] = 0;
		POV[1] = 1;
	}
	//�E��
	else if (js0.dwPOV == 13500){
		POV[0] = 1;
		POV[1] = 1;
	}
	//��
	else if (js0.dwPOV == 18000){
		POV[0] = 1;
		POV[1] = 0;
	}
	//����
	else if (js0.dwPOV == 22500){
		POV[0] = 1;
		POV[1] = -1;
	}
	//��
	else if (js0.dwPOV == 27000){
		POV[0] = 0;
		POV[1] = -1;
	}
	//����
	else if (js0.dwPOV == 31500){
		POV[0] = -1;
		POV[1] = -1;
	}
	//�{�^�����o�b�t�@�ɑ��
	m_analog.data[0] = POV[0];
	m_analog.data[1] = POV[1];
	m_analog.data[2] = an_LY;
	m_analog.data[3] = an_LX;
	m_analog.data[4] = an_RY;
	m_analog.data[5] = an_RX;

	m_analogOut.write();//�o�b�t�@���|�[�g�ւ̏�������
	
	m_button.data = js0.dwButtons; //�{�^���̒l(10�i��)����

	//�Q�[���p�b�h��Ԃ̕\��
	std::cout <<"POV_Y :"<< m_analog.data[0] <<" POV_X : " <<m_analog.data[1]
	<< " Ly : " << m_analog.data[2] << " Lx : " << m_analog.data[3] 
	<< " Rx : " << m_analog.data[4] << " Ry : " << m_analog.data[5]
	<< " button : " << m_button.data << std::endl;
	
	m_buttonOut.write(); //�|�[�g�ւ̏�������

  return RTC::RTC_OK;
}


RTC::ReturnCode_t DUALSHOCK4_RTC::onAborting(RTC::UniqueId ec_id)
{
  return RTC::RTC_OK;
}


RTC::ReturnCode_t DUALSHOCK4_RTC::onError(RTC::UniqueId ec_id)
{
  return RTC::RTC_OK;
}


RTC::ReturnCode_t DUALSHOCK4_RTC::onReset(RTC::UniqueId ec_id)
{
  return RTC::RTC_OK;
}


RTC::ReturnCode_t DUALSHOCK4_RTC::onStateUpdate(RTC::UniqueId ec_id)
{
  return RTC::RTC_OK;
}


RTC::ReturnCode_t DUALSHOCK4_RTC::onRateChanged(RTC::UniqueId ec_id)
{
  return RTC::RTC_OK;
}



extern "C"
{
 
  void DUALSHOCK4_RTCInit(RTC::Manager* manager)
  {
    coil::Properties profile(dualshock4_rtc_spec);
    manager->registerFactory(profile,
                             RTC::Create<DUALSHOCK4_RTC>,
                             RTC::Delete<DUALSHOCK4_RTC>);
  }
  
};

