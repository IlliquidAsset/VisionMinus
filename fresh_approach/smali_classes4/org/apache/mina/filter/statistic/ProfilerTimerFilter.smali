.class public Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;
.super Lorg/apache/mina/core/filterchain/IoFilterAdapter;
.source "ProfilerTimerFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;
    }
.end annotation


# instance fields
.field private messageReceivedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

.field private messageSentTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

.field private profileMessageReceived:Z

.field private profileMessageSent:Z

.field private profileSessionClosed:Z

.field private profileSessionCreated:Z

.field private profileSessionIdle:Z

.field private profileSessionOpened:Z

.field private sessionClosedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

.field private sessionCreatedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

.field private sessionIdleTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

.field private sessionOpenedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

.field private volatile timeUnit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 107
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/apache/mina/core/session/IoEventType;

    sget-object v2, Lorg/apache/mina/core/session/IoEventType;->MESSAGE_RECEIVED:Lorg/apache/mina/core/session/IoEventType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/mina/core/session/IoEventType;->MESSAGE_SENT:Lorg/apache/mina/core/session/IoEventType;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-direct {p0, v0, v1}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;-><init>(Ljava/util/concurrent/TimeUnit;[Lorg/apache/mina/core/session/IoEventType;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/TimeUnit;)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lorg/apache/mina/core/session/IoEventType;

    .line 118
    sget-object v1, Lorg/apache/mina/core/session/IoEventType;->MESSAGE_RECEIVED:Lorg/apache/mina/core/session/IoEventType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/mina/core/session/IoEventType;->MESSAGE_SENT:Lorg/apache/mina/core/session/IoEventType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-direct {p0, p1, v0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;-><init>(Ljava/util/concurrent/TimeUnit;[Lorg/apache/mina/core/session/IoEventType;)V

    return-void
.end method

.method public varargs constructor <init>(Ljava/util/concurrent/TimeUnit;[Lorg/apache/mina/core/session/IoEventType;)V
    .locals 1

    .line 137
    invoke-direct {p0}, Lorg/apache/mina/core/filterchain/IoFilterAdapter;-><init>()V

    const/4 v0, 0x0

    .line 68
    iput-boolean v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileMessageReceived:Z

    .line 74
    iput-boolean v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileMessageSent:Z

    .line 80
    iput-boolean v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionCreated:Z

    .line 86
    iput-boolean v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionOpened:Z

    .line 92
    iput-boolean v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionIdle:Z

    .line 98
    iput-boolean v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionClosed:Z

    .line 138
    iput-object p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->timeUnit:Ljava/util/concurrent/TimeUnit;

    .line 140
    invoke-direct {p0, p2}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->setProfilers([Lorg/apache/mina/core/session/IoEventType;)V

    return-void
.end method

.method private varargs setProfilers([Lorg/apache/mina/core/session/IoEventType;)V
    .locals 4

    .line 149
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 150
    sget-object v3, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$1;->$SwitchMap$org$apache$mina$core$session$IoEventType:[I

    invoke-virtual {v2}, Lorg/apache/mina/core/session/IoEventType;->ordinal()I

    move-result v2

    aget v2, v3, v2

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 177
    :pswitch_0
    new-instance v2, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    invoke-direct {v2, p0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;-><init>(Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;)V

    iput-object v2, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->sessionClosedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    .line 178
    iput-boolean v3, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionClosed:Z

    goto :goto_1

    .line 172
    :pswitch_1
    new-instance v2, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    invoke-direct {v2, p0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;-><init>(Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;)V

    iput-object v2, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->sessionIdleTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    .line 173
    iput-boolean v3, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionIdle:Z

    goto :goto_1

    .line 167
    :pswitch_2
    new-instance v2, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    invoke-direct {v2, p0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;-><init>(Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;)V

    iput-object v2, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->sessionOpenedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    .line 168
    iput-boolean v3, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionOpened:Z

    goto :goto_1

    .line 162
    :pswitch_3
    new-instance v2, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    invoke-direct {v2, p0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;-><init>(Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;)V

    iput-object v2, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->sessionCreatedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    .line 163
    iput-boolean v3, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionCreated:Z

    goto :goto_1

    .line 157
    :pswitch_4
    new-instance v2, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    invoke-direct {v2, p0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;-><init>(Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;)V

    iput-object v2, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->messageSentTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    .line 158
    iput-boolean v3, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileMessageSent:Z

    goto :goto_1

    .line 152
    :pswitch_5
    new-instance v2, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    invoke-direct {v2, p0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;-><init>(Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;)V

    iput-object v2, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->messageReceivedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    .line 153
    iput-boolean v3, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileMessageReceived:Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private timeNow()J
    .locals 4

    .line 889
    sget-object v0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$1;->$SwitchMap$java$util$concurrent$TimeUnit:[I

    iget-object v1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->timeUnit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1}, Ljava/util/concurrent/TimeUnit;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const-wide/16 v2, 0x3e8

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 900
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0

    .line 897
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0

    .line 894
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    div-long/2addr v0, v2

    return-wide v0

    .line 891
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    div-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public getAverageTime(Lorg/apache/mina/core/session/IoEventType;)D
    .locals 2

    .line 498
    sget-object v0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$1;->$SwitchMap$org$apache$mina$core$session$IoEventType:[I

    invoke-virtual {p1}, Lorg/apache/mina/core/session/IoEventType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 535
    :pswitch_0
    iget-boolean p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionClosed:Z

    if-eqz p1, :cond_0

    .line 536
    iget-object p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->sessionClosedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    invoke-virtual {p1}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->getAverage()D

    move-result-wide v0

    return-wide v0

    .line 528
    :pswitch_1
    iget-boolean p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionIdle:Z

    if-eqz p1, :cond_0

    .line 529
    iget-object p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->sessionIdleTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    invoke-virtual {p1}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->getAverage()D

    move-result-wide v0

    return-wide v0

    .line 521
    :pswitch_2
    iget-boolean p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionOpened:Z

    if-eqz p1, :cond_0

    .line 522
    iget-object p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->sessionOpenedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    invoke-virtual {p1}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->getAverage()D

    move-result-wide v0

    return-wide v0

    .line 514
    :pswitch_3
    iget-boolean p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionCreated:Z

    if-eqz p1, :cond_0

    .line 515
    iget-object p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->sessionCreatedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    invoke-virtual {p1}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->getAverage()D

    move-result-wide v0

    return-wide v0

    .line 507
    :pswitch_4
    iget-boolean p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileMessageSent:Z

    if-eqz p1, :cond_0

    .line 508
    iget-object p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->messageSentTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    invoke-virtual {p1}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->getAverage()D

    move-result-wide v0

    return-wide v0

    .line 500
    :pswitch_5
    iget-boolean p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileMessageReceived:Z

    if-eqz p1, :cond_0

    .line 501
    iget-object p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->messageReceivedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    invoke-virtual {p1}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->getAverage()D

    move-result-wide v0

    return-wide v0

    .line 545
    :cond_0
    :goto_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "You are not monitoring this event.  Please add this event first."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getEventsToProfile()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/apache/mina/core/session/IoEventType;",
            ">;"
        }
    .end annotation

    .line 304
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 306
    iget-boolean v1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileMessageReceived:Z

    if-eqz v1, :cond_0

    .line 307
    sget-object v1, Lorg/apache/mina/core/session/IoEventType;->MESSAGE_RECEIVED:Lorg/apache/mina/core/session/IoEventType;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 310
    :cond_0
    iget-boolean v1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileMessageSent:Z

    if-eqz v1, :cond_1

    .line 311
    sget-object v1, Lorg/apache/mina/core/session/IoEventType;->MESSAGE_SENT:Lorg/apache/mina/core/session/IoEventType;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 314
    :cond_1
    iget-boolean v1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionCreated:Z

    if-eqz v1, :cond_2

    .line 315
    sget-object v1, Lorg/apache/mina/core/session/IoEventType;->SESSION_CREATED:Lorg/apache/mina/core/session/IoEventType;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 318
    :cond_2
    iget-boolean v1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionOpened:Z

    if-eqz v1, :cond_3

    .line 319
    sget-object v1, Lorg/apache/mina/core/session/IoEventType;->SESSION_OPENED:Lorg/apache/mina/core/session/IoEventType;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 322
    :cond_3
    iget-boolean v1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionIdle:Z

    if-eqz v1, :cond_4

    .line 323
    sget-object v1, Lorg/apache/mina/core/session/IoEventType;->SESSION_IDLE:Lorg/apache/mina/core/session/IoEventType;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 326
    :cond_4
    iget-boolean v1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionClosed:Z

    if-eqz v1, :cond_5

    .line 327
    sget-object v1, Lorg/apache/mina/core/session/IoEventType;->SESSION_CLOSED:Lorg/apache/mina/core/session/IoEventType;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_5
    return-object v0
.end method

.method public getMaximumTime(Lorg/apache/mina/core/session/IoEventType;)J
    .locals 2

    .line 738
    sget-object v0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$1;->$SwitchMap$org$apache$mina$core$session$IoEventType:[I

    invoke-virtual {p1}, Lorg/apache/mina/core/session/IoEventType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 775
    :pswitch_0
    iget-boolean p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionClosed:Z

    if-eqz p1, :cond_0

    .line 776
    iget-object p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->sessionClosedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    invoke-virtual {p1}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->getMaximum()J

    move-result-wide v0

    return-wide v0

    .line 768
    :pswitch_1
    iget-boolean p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionIdle:Z

    if-eqz p1, :cond_0

    .line 769
    iget-object p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->sessionIdleTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    invoke-virtual {p1}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->getMaximum()J

    move-result-wide v0

    return-wide v0

    .line 761
    :pswitch_2
    iget-boolean p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionOpened:Z

    if-eqz p1, :cond_0

    .line 762
    iget-object p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->sessionOpenedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    invoke-virtual {p1}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->getMaximum()J

    move-result-wide v0

    return-wide v0

    .line 754
    :pswitch_3
    iget-boolean p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionCreated:Z

    if-eqz p1, :cond_0

    .line 755
    iget-object p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->sessionCreatedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    invoke-virtual {p1}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->getMaximum()J

    move-result-wide v0

    return-wide v0

    .line 747
    :pswitch_4
    iget-boolean p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileMessageSent:Z

    if-eqz p1, :cond_0

    .line 748
    iget-object p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->messageSentTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    invoke-virtual {p1}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->getMaximum()J

    move-result-wide v0

    return-wide v0

    .line 740
    :pswitch_5
    iget-boolean p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileMessageReceived:Z

    if-eqz p1, :cond_0

    .line 741
    iget-object p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->messageReceivedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    invoke-virtual {p1}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->getMaximum()J

    move-result-wide v0

    return-wide v0

    .line 785
    :cond_0
    :goto_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "You are not monitoring this event.  Please add this event first."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getMinimumTime(Lorg/apache/mina/core/session/IoEventType;)J
    .locals 2

    .line 678
    sget-object v0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$1;->$SwitchMap$org$apache$mina$core$session$IoEventType:[I

    invoke-virtual {p1}, Lorg/apache/mina/core/session/IoEventType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 715
    :pswitch_0
    iget-boolean p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionClosed:Z

    if-eqz p1, :cond_0

    .line 716
    iget-object p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->sessionClosedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    invoke-virtual {p1}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->getMinimum()J

    move-result-wide v0

    return-wide v0

    .line 708
    :pswitch_1
    iget-boolean p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionIdle:Z

    if-eqz p1, :cond_0

    .line 709
    iget-object p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->sessionIdleTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    invoke-virtual {p1}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->getMinimum()J

    move-result-wide v0

    return-wide v0

    .line 701
    :pswitch_2
    iget-boolean p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionOpened:Z

    if-eqz p1, :cond_0

    .line 702
    iget-object p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->sessionOpenedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    invoke-virtual {p1}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->getMinimum()J

    move-result-wide v0

    return-wide v0

    .line 694
    :pswitch_3
    iget-boolean p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionCreated:Z

    if-eqz p1, :cond_0

    .line 695
    iget-object p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->sessionCreatedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    invoke-virtual {p1}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->getMinimum()J

    move-result-wide v0

    return-wide v0

    .line 687
    :pswitch_4
    iget-boolean p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileMessageSent:Z

    if-eqz p1, :cond_0

    .line 688
    iget-object p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->messageSentTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    invoke-virtual {p1}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->getMinimum()J

    move-result-wide v0

    return-wide v0

    .line 680
    :pswitch_5
    iget-boolean p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileMessageReceived:Z

    if-eqz p1, :cond_0

    .line 681
    iget-object p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->messageReceivedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    invoke-virtual {p1}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->getMinimum()J

    move-result-wide v0

    return-wide v0

    .line 725
    :cond_0
    :goto_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "You are not monitoring this event.  Please add this event first."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getTotalCalls(Lorg/apache/mina/core/session/IoEventType;)J
    .locals 2

    .line 558
    sget-object v0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$1;->$SwitchMap$org$apache$mina$core$session$IoEventType:[I

    invoke-virtual {p1}, Lorg/apache/mina/core/session/IoEventType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 595
    :pswitch_0
    iget-boolean p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionClosed:Z

    if-eqz p1, :cond_0

    .line 596
    iget-object p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->sessionClosedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    invoke-virtual {p1}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->getCallsNumber()J

    move-result-wide v0

    return-wide v0

    .line 588
    :pswitch_1
    iget-boolean p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionIdle:Z

    if-eqz p1, :cond_0

    .line 589
    iget-object p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->sessionIdleTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    invoke-virtual {p1}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->getCallsNumber()J

    move-result-wide v0

    return-wide v0

    .line 581
    :pswitch_2
    iget-boolean p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionOpened:Z

    if-eqz p1, :cond_0

    .line 582
    iget-object p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->sessionOpenedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    invoke-virtual {p1}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->getCallsNumber()J

    move-result-wide v0

    return-wide v0

    .line 574
    :pswitch_3
    iget-boolean p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionCreated:Z

    if-eqz p1, :cond_0

    .line 575
    iget-object p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->sessionCreatedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    invoke-virtual {p1}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->getCallsNumber()J

    move-result-wide v0

    return-wide v0

    .line 567
    :pswitch_4
    iget-boolean p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileMessageSent:Z

    if-eqz p1, :cond_0

    .line 568
    iget-object p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->messageSentTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    invoke-virtual {p1}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->getCallsNumber()J

    move-result-wide v0

    return-wide v0

    .line 560
    :pswitch_5
    iget-boolean p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileMessageReceived:Z

    if-eqz p1, :cond_0

    .line 561
    iget-object p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->messageReceivedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    invoke-virtual {p1}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->getCallsNumber()J

    move-result-wide v0

    return-wide v0

    .line 605
    :cond_0
    :goto_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "You are not monitoring this event.  Please add this event first."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getTotalTime(Lorg/apache/mina/core/session/IoEventType;)J
    .locals 2

    .line 618
    sget-object v0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$1;->$SwitchMap$org$apache$mina$core$session$IoEventType:[I

    invoke-virtual {p1}, Lorg/apache/mina/core/session/IoEventType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 655
    :pswitch_0
    iget-boolean p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionClosed:Z

    if-eqz p1, :cond_0

    .line 656
    iget-object p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->sessionClosedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    invoke-virtual {p1}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->getTotal()J

    move-result-wide v0

    return-wide v0

    .line 648
    :pswitch_1
    iget-boolean p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionIdle:Z

    if-eqz p1, :cond_0

    .line 649
    iget-object p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->sessionIdleTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    invoke-virtual {p1}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->getTotal()J

    move-result-wide v0

    return-wide v0

    .line 641
    :pswitch_2
    iget-boolean p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionOpened:Z

    if-eqz p1, :cond_0

    .line 642
    iget-object p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->sessionOpenedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    invoke-virtual {p1}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->getTotal()J

    move-result-wide v0

    return-wide v0

    .line 634
    :pswitch_3
    iget-boolean p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionCreated:Z

    if-eqz p1, :cond_0

    .line 635
    iget-object p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->sessionCreatedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    invoke-virtual {p1}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->getTotal()J

    move-result-wide v0

    return-wide v0

    .line 627
    :pswitch_4
    iget-boolean p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileMessageSent:Z

    if-eqz p1, :cond_0

    .line 628
    iget-object p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->messageSentTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    invoke-virtual {p1}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->getTotal()J

    move-result-wide v0

    return-wide v0

    .line 620
    :pswitch_5
    iget-boolean p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileMessageReceived:Z

    if-eqz p1, :cond_0

    .line 621
    iget-object p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->messageReceivedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    invoke-virtual {p1}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->getTotal()J

    move-result-wide v0

    return-wide v0

    .line 665
    :cond_0
    :goto_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "You are not monitoring this event.  Please add this event first."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public messageReceived(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 357
    iget-boolean v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileMessageReceived:Z

    if-eqz v0, :cond_0

    .line 358
    invoke-direct {p0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->timeNow()J

    move-result-wide v0

    .line 359
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->messageReceived(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    .line 360
    invoke-direct {p0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->timeNow()J

    move-result-wide p1

    .line 361
    iget-object p3, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->messageReceivedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    sub-long/2addr p1, v0

    invoke-virtual {p3, p1, p2}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->addNewDuration(J)V

    goto :goto_0

    .line 363
    :cond_0
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->messageReceived(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public messageSent(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 382
    iget-boolean v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileMessageSent:Z

    if-eqz v0, :cond_0

    .line 383
    invoke-direct {p0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->timeNow()J

    move-result-wide v0

    .line 384
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->messageSent(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    .line 385
    invoke-direct {p0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->timeNow()J

    move-result-wide p1

    .line 386
    iget-object p3, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->messageSentTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    sub-long/2addr p1, v0

    invoke-virtual {p3, p1, p2}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->addNewDuration(J)V

    goto :goto_0

    .line 388
    :cond_0
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->messageSent(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    :goto_0
    return-void
.end method

.method public profile(Lorg/apache/mina/core/session/IoEventType;)V
    .locals 1

    .line 202
    sget-object v0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$1;->$SwitchMap$org$apache$mina$core$session$IoEventType:[I

    invoke-virtual {p1}, Lorg/apache/mina/core/session/IoEventType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    return-void

    .line 249
    :pswitch_0
    iput-boolean v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionClosed:Z

    .line 251
    iget-object p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->sessionClosedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    if-nez p1, :cond_0

    .line 252
    new-instance p1, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    invoke-direct {p1, p0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;-><init>(Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;)V

    iput-object p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->sessionClosedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    :cond_0
    return-void

    .line 240
    :pswitch_1
    iput-boolean v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionIdle:Z

    .line 242
    iget-object p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->sessionIdleTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    if-nez p1, :cond_1

    .line 243
    new-instance p1, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    invoke-direct {p1, p0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;-><init>(Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;)V

    iput-object p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->sessionIdleTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    :cond_1
    return-void

    .line 231
    :pswitch_2
    iput-boolean v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionOpened:Z

    .line 233
    iget-object p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->sessionOpenedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    if-nez p1, :cond_2

    .line 234
    new-instance p1, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    invoke-direct {p1, p0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;-><init>(Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;)V

    iput-object p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->sessionOpenedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    :cond_2
    return-void

    .line 222
    :pswitch_3
    iput-boolean v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionCreated:Z

    .line 224
    iget-object p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->sessionCreatedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    if-nez p1, :cond_3

    .line 225
    new-instance p1, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    invoke-direct {p1, p0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;-><init>(Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;)V

    iput-object p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->sessionCreatedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    :cond_3
    return-void

    .line 213
    :pswitch_4
    iput-boolean v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileMessageSent:Z

    .line 215
    iget-object p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->messageSentTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    if-nez p1, :cond_4

    .line 216
    new-instance p1, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    invoke-direct {p1, p0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;-><init>(Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;)V

    iput-object p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->messageSentTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    :cond_4
    return-void

    .line 204
    :pswitch_5
    iput-boolean v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileMessageReceived:Z

    .line 206
    iget-object p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->messageReceivedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    if-nez p1, :cond_5

    .line 207
    new-instance p1, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    invoke-direct {p1, p0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;-><init>(Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;)V

    iput-object p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->messageReceivedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    :cond_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public sessionClosed(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 479
    iget-boolean v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionClosed:Z

    if-eqz v0, :cond_0

    .line 480
    invoke-direct {p0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->timeNow()J

    move-result-wide v0

    .line 481
    invoke-interface {p1, p2}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->sessionClosed(Lorg/apache/mina/core/session/IoSession;)V

    .line 482
    invoke-direct {p0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->timeNow()J

    move-result-wide p1

    .line 483
    iget-object v2, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->sessionClosedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    sub-long/2addr p1, v0

    invoke-virtual {v2, p1, p2}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->addNewDuration(J)V

    goto :goto_0

    .line 485
    :cond_0
    invoke-interface {p1, p2}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->sessionClosed(Lorg/apache/mina/core/session/IoSession;)V

    :goto_0
    return-void
.end method

.method public sessionCreated(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 406
    iget-boolean v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionCreated:Z

    if-eqz v0, :cond_0

    .line 407
    invoke-direct {p0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->timeNow()J

    move-result-wide v0

    .line 408
    invoke-interface {p1, p2}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->sessionCreated(Lorg/apache/mina/core/session/IoSession;)V

    .line 409
    invoke-direct {p0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->timeNow()J

    move-result-wide p1

    .line 410
    iget-object v2, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->sessionCreatedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    sub-long/2addr p1, v0

    invoke-virtual {v2, p1, p2}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->addNewDuration(J)V

    goto :goto_0

    .line 412
    :cond_0
    invoke-interface {p1, p2}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->sessionCreated(Lorg/apache/mina/core/session/IoSession;)V

    :goto_0
    return-void
.end method

.method public sessionIdle(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/session/IdleStatus;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 455
    iget-boolean v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionIdle:Z

    if-eqz v0, :cond_0

    .line 456
    invoke-direct {p0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->timeNow()J

    move-result-wide v0

    .line 457
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->sessionIdle(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/session/IdleStatus;)V

    .line 458
    invoke-direct {p0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->timeNow()J

    move-result-wide p1

    .line 459
    iget-object p3, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->sessionIdleTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    sub-long/2addr p1, v0

    invoke-virtual {p3, p1, p2}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->addNewDuration(J)V

    goto :goto_0

    .line 461
    :cond_0
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->sessionIdle(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/session/IdleStatus;)V

    :goto_0
    return-void
.end method

.method public sessionOpened(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 430
    iget-boolean v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionOpened:Z

    if-eqz v0, :cond_0

    .line 431
    invoke-direct {p0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->timeNow()J

    move-result-wide v0

    .line 432
    invoke-interface {p1, p2}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->sessionOpened(Lorg/apache/mina/core/session/IoSession;)V

    .line 433
    invoke-direct {p0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->timeNow()J

    move-result-wide p1

    .line 434
    iget-object v2, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->sessionOpenedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    sub-long/2addr p1, v0

    invoke-virtual {v2, p1, p2}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->addNewDuration(J)V

    goto :goto_0

    .line 436
    :cond_0
    invoke-interface {p1, p2}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->sessionOpened(Lorg/apache/mina/core/session/IoSession;)V

    :goto_0
    return-void
.end method

.method public varargs setEventsToProfile([Lorg/apache/mina/core/session/IoEventType;)V
    .locals 0

    .line 339
    invoke-direct {p0, p1}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->setProfilers([Lorg/apache/mina/core/session/IoEventType;)V

    return-void
.end method

.method public setTimeUnit(Ljava/util/concurrent/TimeUnit;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->timeUnit:Ljava/util/concurrent/TimeUnit;

    return-void
.end method

.method public stopProfile(Lorg/apache/mina/core/session/IoEventType;)V
    .locals 1

    .line 268
    sget-object v0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$1;->$SwitchMap$org$apache$mina$core$session$IoEventType:[I

    invoke-virtual {p1}, Lorg/apache/mina/core/session/IoEventType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    return-void

    .line 290
    :pswitch_0
    iput-boolean v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionClosed:Z

    return-void

    .line 286
    :pswitch_1
    iput-boolean v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionIdle:Z

    return-void

    .line 282
    :pswitch_2
    iput-boolean v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionOpened:Z

    return-void

    .line 278
    :pswitch_3
    iput-boolean v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionCreated:Z

    return-void

    .line 274
    :pswitch_4
    iput-boolean v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileMessageSent:Z

    return-void

    .line 270
    :pswitch_5
    iput-boolean v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileMessageReceived:Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
