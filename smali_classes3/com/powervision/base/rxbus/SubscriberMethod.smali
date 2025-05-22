.class public Lcom/powervision/base/rxbus/SubscriberMethod;
.super Ljava/lang/Object;
.source "SubscriberMethod.java"


# instance fields
.field private mCode:I

.field private mEventType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private mMethod:Ljava/lang/reflect/Method;

.field private mSubscriber:Ljava/lang/Object;

.field private mThreadMode:Lcom/powervision/base/rxbus/ThreadMode;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/lang/Class;ILcom/powervision/base/rxbus/ThreadMode;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Class<",
            "*>;I",
            "Lcom/powervision/base/rxbus/ThreadMode;",
            ")V"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p2, p0, Lcom/powervision/base/rxbus/SubscriberMethod;->mMethod:Ljava/lang/reflect/Method;

    .line 35
    iput-object p5, p0, Lcom/powervision/base/rxbus/SubscriberMethod;->mThreadMode:Lcom/powervision/base/rxbus/ThreadMode;

    .line 36
    iput-object p3, p0, Lcom/powervision/base/rxbus/SubscriberMethod;->mEventType:Ljava/lang/Class;

    .line 37
    iput-object p1, p0, Lcom/powervision/base/rxbus/SubscriberMethod;->mSubscriber:Ljava/lang/Object;

    .line 38
    iput p4, p0, Lcom/powervision/base/rxbus/SubscriberMethod;->mCode:I

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 58
    iget v0, p0, Lcom/powervision/base/rxbus/SubscriberMethod;->mCode:I

    return v0
.end method

.method public getEventType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/powervision/base/rxbus/SubscriberMethod;->mEventType:Ljava/lang/Class;

    return-object v0
.end method

.method public getMethod()Ljava/lang/reflect/Method;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/powervision/base/rxbus/SubscriberMethod;->mMethod:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public getSubscriber()Ljava/lang/Object;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/powervision/base/rxbus/SubscriberMethod;->mSubscriber:Ljava/lang/Object;

    return-object v0
.end method

.method public getThreadMode()Lcom/powervision/base/rxbus/ThreadMode;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/powervision/base/rxbus/SubscriberMethod;->mThreadMode:Lcom/powervision/base/rxbus/ThreadMode;

    return-object v0
.end method

.method public invoke(Ljava/lang/Object;)V
    .locals 4

    .line 68
    :try_start_0
    iget-object v0, p0, Lcom/powervision/base/rxbus/SubscriberMethod;->mMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 69
    array-length v2, v0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 70
    iget-object v0, p0, Lcom/powervision/base/rxbus/SubscriberMethod;->mMethod:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/powervision/base/rxbus/SubscriberMethod;->mSubscriber:Ljava/lang/Object;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v1

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    if-eqz v0, :cond_1

    .line 71
    array-length p1, v0

    if-nez p1, :cond_2

    .line 72
    :cond_1
    iget-object p1, p0, Lcom/powervision/base/rxbus/SubscriberMethod;->mMethod:Ljava/lang/reflect/Method;

    iget-object v0, p0, Lcom/powervision/base/rxbus/SubscriberMethod;->mSubscriber:Ljava/lang/Object;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 75
    :goto_0
    invoke-virtual {p1}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    :cond_2
    :goto_1
    return-void
.end method
