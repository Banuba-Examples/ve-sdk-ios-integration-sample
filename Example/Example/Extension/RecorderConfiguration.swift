import UIKit
import BanubaVideoEditorSDK
import VideoEditor

extension ViewController {
  func updateRecorderConfiguration(_ configuration: RecorderConfiguration) -> RecorderConfiguration {
    var configuration = configuration
    
    configuration.videoResolution = VideoResolutionConfiguration(
      default: .hd1920x1080,
      resolutions: [
        .iPhone5s: .hd1280x720,
        .iPhone6: .default854x480,
        .iPhone6s: .hd1280x720,
        .iPhone6Plus: .default854x480,
        .iPhone6sPlus: .hd1280x720,
        .iPhoneSE: .hd1280x720,
      ],
      thumbnailHeights: [
        .iPhone5s: 200.0,
        .iPhone6: 80.0,
        .iPhone6s: 200.0,
        .iPhone6Plus: 80.0,
        .iPhone6sPlus: 200.0,
        .iPhoneSE: 200.0,
      ],
      defaultThumbnailHeight: 400.0
    )
    
    let nextButtonTextConfiguration = TextConfiguration(
      kern: 1.0,
      font: UIFont.systemFont(ofSize: 12.0),
      color: UIColor.white
    )
    let inactiveNextButtonTextConfiguration = TextConfiguration(
      kern: 1.0,
      font: UIFont.systemFont(ofSize: 12.0),
      color: UIColor.white.withAlphaComponent(0.5)
    )
    
    configuration.saveButton = SaveButtonConfiguration(
      textConfiguration: nextButtonTextConfiguration,
      inactiveTextConfiguration: inactiveNextButtonTextConfiguration,
      text: "NEXT",
      width: 68.0,
      height: 41.0,
      cornerRadius: 4.0,
      backgroundColor: .irisBlue,
      inactiveBackgroundColor: .irisBlue.withAlphaComponent(0.5)
    )
    
    configuration.backButton = BackButtonConfiguration(imageConfiguration: BanubaVideoEditorSDK.ImageConfiguration(imageName: "ic_nav_close"))
    configuration.removeButtonImageName = "delete_videopart"
    configuration.captureButtonModes = [.video]
//    configuration.captureButtonMode = .video
    configuration.recordButtonConfiguration.normalImageName = "ic_record_normal"
    configuration.recordButtonConfiguration.recordImageName = "ic_record_normal"
    configuration.recordButtonConfiguration.idleStrokeColor = UIColor.white.cgColor
    configuration.recordButtonConfiguration.strokeColor = UIColor.irisBlue.cgColor
    
    
    
    configuration.additionalEffectsButtons = [
      AdditionalEffectsButtonConfiguration(
        identifier: .beauty,
        imageConfiguration: ImageConfiguration(imageName: "ic_beauty_off"),
        selectedImageConfiguration: ImageConfiguration(imageName: "ic_beauty_on")
      ),
      AdditionalEffectsButtonConfiguration(
        identifier: .sound,
        imageConfiguration: ImageConfiguration(imageName: "ic_audio_off"),
        selectedImageConfiguration: ImageConfiguration(imageName: "ic_audio_on"),
        position: .bottom
      ),
      AdditionalEffectsButtonConfiguration(
        identifier: .effects,
        imageConfiguration: ImageConfiguration(imageName: "ic_filters_off"),
        selectedImageConfiguration: ImageConfiguration(imageName: "ic_filters_on")
      ),
      AdditionalEffectsButtonConfiguration(
        identifier: .masks,
        imageConfiguration: ImageConfiguration(imageName: "ic_masks_off"),
        selectedImageConfiguration: ImageConfiguration(imageName: "ic_masks_on")
      ),
      AdditionalEffectsButtonConfiguration(
        identifier: .toggle,
        imageConfiguration: ImageConfiguration(imageName: "ic_cam_front"),
        selectedImageConfiguration: ImageConfiguration(imageName: "ic_cam_back_on")
      ),
      AdditionalEffectsButtonConfiguration(
        identifier: .flashlight,
        imageConfiguration: ImageConfiguration(imageName: "ic_flash_off"),
        selectedImageConfiguration: ImageConfiguration(imageName: "ic_flash_on")
      ),
      AdditionalEffectsButtonConfiguration(
        identifier: .timer,
        imageConfiguration: ImageConfiguration(imageName: "ic_timer_off"),
        selectedImageConfiguration: ImageConfiguration(imageName: "ic_timer_on")
      ),
      AdditionalEffectsButtonConfiguration(
        identifier: .speed,
        imageConfiguration: ImageConfiguration(imageName: "ic_speed_1x"),
        selectedImageConfiguration: nil
      ),
      AdditionalEffectsButtonConfiguration(
        identifier: .muteSound,
        imageConfiguration: ImageConfiguration(imageName: "ic_mic_on"),
        selectedImageConfiguration: ImageConfiguration(imageName: "ic_mic_off")
      ),
      AdditionalEffectsButtonConfiguration(
        identifier: .pip,
        imageConfiguration: ImageConfiguration(imageName: "camera_control.pip_on"),
        selectedImageConfiguration: ImageConfiguration(imageName: "camera_control.pip_off")
      )
    ]
    
    configuration.speedBarButtons.imageNameHalf = "ic_speed_0.5x"
    configuration.speedBarButtons.imageNameNormal = "ic_speed_1x"
    configuration.speedBarButtons.imageNameDouble = "ic_speed_2x"
    configuration.speedBarButtons.imageNameTriple = "ic_speed_3x"
    configuration.speedBarButtons.selectedTitleColor = .irisBlue
    
    let galleryButton: RoundedButtonConfiguration = RoundedButtonConfiguration(
      textConfiguration: TextConfiguration(
        kern: 0.0,
        font: UIFont.systemFont(ofSize: 12.0),
        color: UIColor.white,
        text: NSLocalizedString("com.banuba.recorder.gallery.title", comment: "")
      ),
      cornerRadius: 3,
      backgroundColor: UIColor.clear,
      borderWidth: 0
    )
    configuration.galleryButton = galleryButton
    
    configuration.emptyGalleryImageName = "multi_choise"
    
    configuration.timerConfiguration.defaultButton = ImageButtonConfiguration(imageConfiguration: ImageConfiguration(imageName: "ic_timer_off"))
    configuration.timerConfiguration.options = [
      TimerConfiguration.TimerOptionConfiguration(
        button: ImageButtonConfiguration(imageConfiguration: ImageConfiguration(imageName: "ic_timer_on")),
        startingTimerSeconds: 3,
        stoppingTimerSeconds: 0
      )
    ]
    
    configuration.timeLineConfiguration.progressBarColor = .irisBlue
    configuration.timeLineConfiguration.progressBarSelectColor = .white
    
    configuration.regularRecordButtonPosition = 10.0
    configuration.recorderEffectsConfiguration.cornerRadius = 0.0
    configuration.leftControlsBottomOffsetFromCaptureButton = 0.0
    configuration.leftControlsLeftOffset = 25.0
    configuration.sequenceHeight = 6.0
    configuration.loopAudioWhileRecording = true
    configuration.takeAudioDurationAsMaximum = false
    configuration.isDynamicMusicTitle = false
    configuration.isAudioRateEqualsVideoSpeed = true
    configuration.isGalleryButtonHidden = false
    configuration.supportMultiRecords = true
    
    let videoCaptureButton: RoundedButtonConfiguration = RoundedButtonConfiguration(
      textConfiguration: TextConfiguration(
        kern: .zero,
        font: .systemFont(ofSize: 14, weight: .regular),
        color: UIColor.white
      ),
      cornerRadius: .zero,
      backgroundColor: UIColor.clear,
      borderWidth: .zero
    )
    configuration.videoCaptureButtonConfiguration = videoCaptureButton
    
    let photoButton: RoundedButtonConfiguration = RoundedButtonConfiguration(
      textConfiguration: TextConfiguration(
        kern: .zero,
        font: .systemFont(ofSize: 14, weight: .regular),
        color: UIColor.white
      ),
      cornerRadius: .zero,
      backgroundColor: UIColor.clear,
      borderWidth: .zero
    )
    configuration.photoCaptureButtonConfiguration = photoButton
    
    let backroundMusicContainer = BackgroundConfiguration(
      cornerRadius: 20.0,
      color: .black.withAlphaComponent(0.3)
    )
    configuration.backroundMusicContainerConfiguration = backroundMusicContainer
    
    configuration.floatingViewSeparatedLines = true
    configuration.effectSelectorContainerCornerRadius = 8.0
    configuration.preferredStatusBarStyle = .default
    
    return configuration
  }
}

