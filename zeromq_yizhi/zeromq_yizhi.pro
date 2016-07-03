TEMPLATE = app
CONFIG += console
CONFIG -= qt

INCLUDEPATH += include \
                src
LIBS += -lWs2_32 \
        -lRpcrt4

SOURCES += main.cpp \
    src/zmq_listener.cpp \
    src/zmq_init.cpp \
    src/zmq_engine.cpp \
    src/zmq_connecter.cpp \
    src/zmq.cpp \
    src/xsub.cpp \
    src/xreq.cpp \
    src/xrep.cpp \
    src/xpub.cpp \
    src/uuid.cpp \
    src/trie.cpp \
    src/transient_session.cpp \
    src/thread.cpp \
    src/tcp_socket.cpp \
    src/tcp_listener.cpp \
    src/tcp_connecter.cpp \
    src/swap.cpp \
    src/sub.cpp \
    src/socket_base.cpp \
    src/signaler.cpp \
    src/session.cpp \
    src/select.cpp \
    src/req.cpp \
    src/rep.cpp \
    src/reaper.cpp \
    src/push.cpp \
    src/pull.cpp \
    src/pub.cpp \
    src/poller_base.cpp \
    src/poll.cpp \
    src/pipe.cpp \
    src/pgm_socket.cpp \
    src/pgm_sender.cpp \
    src/pgm_receiver.cpp \
    src/pair.cpp \
    src/own.cpp \
    src/options.cpp \
    src/object.cpp \
    src/named_session.cpp \
    src/mailbox.cpp \
    src/lb.cpp \
    src/kqueue.cpp \
    src/ip.cpp \
    src/io_thread.cpp \
    src/io_object.cpp \
    src/fq.cpp \
    src/err.cpp \
    src/epoll.cpp \
    src/encoder.cpp \
    src/dist.cpp \
    src/devpoll.cpp \
    src/device.cpp \
    src/decoder.cpp \
    src/ctx.cpp \
    src/connect_session.cpp \
    src/command.cpp \
    src/clock.cpp

OTHER_FILES += \
    src/version.rc

HEADERS += \
    src/zmq_listener.hpp \
    src/zmq_init.hpp \
    src/zmq_engine.hpp \
    src/zmq_connecter.hpp \
    src/yqueue.hpp \
    src/ypipe.hpp \
    src/xsub.hpp \
    src/xreq.hpp \
    src/xrep.hpp \
    src/xpub.hpp \
    src/wire.hpp \
    src/windows.hpp \
    src/uuid.hpp \
    src/trie.hpp \
    src/transient_session.hpp \
    src/thread.hpp \
    src/tcp_socket.hpp \
    src/tcp_listener.hpp \
    src/tcp_connecter.hpp \
    src/swap.hpp \
    src/sub.hpp \
    src/stdint.hpp \
    src/socket_base.hpp \
    src/signaler.hpp \
    src/session.hpp \
    src/semaphore.hpp \
    src/select.hpp \
    src/req.hpp \
    src/rep.hpp \
    src/reaper.hpp \
    src/push.hpp \
    src/pull.hpp \
    src/pub.hpp \
    src/poller_base.hpp \
    src/poller.hpp \
    src/poll.hpp \
    src/platform.hpp \
    src/pipe.hpp \
    src/pgm_socket.hpp \
    src/pgm_sender.hpp \
    src/pgm_receiver.hpp \
    src/pair.hpp \
    src/own.hpp \
    src/options.hpp \
    src/object.hpp \
    src/named_session.hpp \
    src/mutex.hpp \
    src/msg_content.hpp \
    src/mailbox.hpp \
    src/likely.hpp \
    src/lb.hpp \
    src/kqueue.hpp \
    src/ip.hpp \
    src/io_thread.hpp \
    src/io_object.hpp \
    src/i_poll_events.hpp \
    src/i_inout.hpp \
    src/i_engine.hpp \
    src/gcc_421_char_traits.hpp \
    src/fq.hpp \
    src/fd.hpp \
    src/err.hpp \
    src/epoll.hpp \
    src/encoder.hpp \
    src/dist.hpp \
    src/devpoll.hpp \
    src/device.hpp \
    src/decoder.hpp \
    src/ctx.hpp \
    src/connect_session.hpp \
    src/config.hpp \
    src/command.hpp \
    src/clock.hpp \
    src/blob.hpp \
    src/atomic_ptr.hpp \
    src/atomic_counter.hpp \
    src/array.hpp \
    include/zmq_utils.h \
    include/zmq.hpp \
    include/zmq.h
