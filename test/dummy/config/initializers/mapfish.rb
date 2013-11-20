SITE_DEFAULT = 'maps.example.com'

HOST_ZONE = {
  #'intra.maps.example.com'  => SITE_INTRANET,
}
HOST_ZONE.default = SITE_DEFAULT

#Hostnames in image links (e.g. identify symbol) which should be replaced by 127.0.0.1 for printing
LOCAL_GRAPHICS_HOST = /maps.example.com/

#Hosts in WMS URLs, which should be called via MAPSERV_URL for printing
LOCAL_WMS = [
  %r(^maps.example.com$),
  %r(^127.0.0.1$),
  %r(^localhost$),
]

#Location for temporary mapfish-print files
#NOTE: use a shared directory for multi-node setups (e.g. NFS)
PRINT_TMP_PATH = "/tmp"

DEFAULT_TOPIC = {
  SITE_DEFAULT => (Topic.first rescue nil) #Topic.where(:name => 'MainMap').first
}

DEFAULT_SCALE = 310000
DEFAULT_X = 692000
DEFAULT_Y = 252000

# regex for WMS parameters to detect if layer filter is used
LAYER_FILTER_REGEX = /^filter_.+$/i