{
  config,
  pkgs,
  inputs,
  ...
}:
{
  environment.systemPackages = [ pkgs.chromium ];

  nixpkgs.config.chromium.commandLineArgs = "--enable-features=VaapiVideoDecodeLinuxGL,VaapiVideoEncoder,Vulkan,VulkanFromANGLE,DefaultANGLEVulkan,VaapiIgnoreDriverChecks,VaapiVideoDecoder,PlatformHEVCDecoderSupport,UseMultiPlaneFormatForHardwareVideo";
}
