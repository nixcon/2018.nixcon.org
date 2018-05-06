{ lib }:
{
  /* URL of the site, must be set to the url of the domain the site will be deployed.
     Should not end with a '/'.
  */
  siteUrl = "https://nixcon2018.org";

  /* Theme specific settings
     it is possible to override any of the used themes configuration in this set.
  */
  theme = {
    site.title = "NixCon 2018";
    lib.highlightjs.extraLanguages = [ "nix" ];
    lib.highlightjs.enable = true;
  };
}
