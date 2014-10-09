# - Try to find ZeroMQ
# Once done this will define
#  ZEROMQ_FOUND - System has ZeroMQ
#  ZEROMQ_INCLUDE_DIRS - ZeroMQ include directories
#  ZEROMQ_LIBRARIES - Libraries needed to use ZeroMQ

find_path(ZEROMQ_INCLUDE_DIR zmq.h)
find_library(ZEROMQ_LIBRARY zmq)

set(ZEROMQ_LIBRARIES ${ZEROMQ_LIBRARY})
set(ZEROMQ_INCLUDE_DIRS ${ZEROMQ_INCLUDE_DIR})

include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(ZeroMQ DEFAULT_MSG
                                  ZEROMQ_LIBRARY ZEROMQ_INCLUDE_DIR)

mark_as_advanced(ZEROMQ_LIBRARY ZEROMQ_INCLUDE_DIR)
