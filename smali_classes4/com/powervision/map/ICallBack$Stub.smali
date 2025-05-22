.class public abstract Lcom/powervision/map/ICallBack$Stub;
.super Landroid/os/Binder;
.source "ICallBack.java"

# interfaces
.implements Lcom/powervision/map/ICallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/map/ICallBack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/map/ICallBack$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.powervision.map.ICallBack"

.field static final TRANSACTION_basicTypes:I = 0x1

.field static final TRANSACTION_getPersonPositon:I = 0x3

.field static final TRANSACTION_getResult:I = 0x2

.field static final TRANSACTION_isChina:I = 0x4

.field static final TRANSACTION_onAvailable:I = 0x5

.field static final TRANSACTION_onLost:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.powervision.map.ICallBack"

    .line 46
    invoke-virtual {p0, p0, v0}, Lcom/powervision/map/ICallBack$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/powervision/map/ICallBack;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.powervision.map.ICallBack"

    .line 57
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 58
    instance-of v1, v0, Lcom/powervision/map/ICallBack;

    if-eqz v1, :cond_1

    .line 59
    check-cast v0, Lcom/powervision/map/ICallBack;

    return-object v0

    .line 61
    :cond_1
    new-instance v0, Lcom/powervision/map/ICallBack$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/powervision/map/ICallBack$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/powervision/map/ICallBack;
    .locals 1

    .line 304
    sget-object v0, Lcom/powervision/map/ICallBack$Stub$Proxy;->sDefaultImpl:Lcom/powervision/map/ICallBack;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/powervision/map/ICallBack;)Z
    .locals 1

    .line 294
    sget-object v0, Lcom/powervision/map/ICallBack$Stub$Proxy;->sDefaultImpl:Lcom/powervision/map/ICallBack;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 298
    sput-object p0, Lcom/powervision/map/ICallBack$Stub$Proxy;->sDefaultImpl:Lcom/powervision/map/ICallBack;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 295
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "setDefaultImpl() called twice"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    const-string v2, "com.powervision.map.ICallBack"

    if-eq p1, v0, :cond_2

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 141
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 134
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0}, Lcom/powervision/map/ICallBack$Stub;->onLost()V

    .line 136
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 127
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0}, Lcom/powervision/map/ICallBack$Stub;->onAvailable()V

    .line 129
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 118
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 121
    :cond_0
    invoke-virtual {p0, v0}, Lcom/powervision/map/ICallBack$Stub;->isChina(Z)V

    .line 122
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 107
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide p1

    .line 112
    invoke-virtual {p0, v2, v3, p1, p2}, Lcom/powervision/map/ICallBack$Stub;->getPersonPositon(DD)V

    .line 113
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 98
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 101
    invoke-virtual {p0, p1}, Lcom/powervision/map/ICallBack$Stub;->getResult(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 79
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    .line 87
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v7

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v8

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    move-object v2, p0

    .line 92
    invoke-virtual/range {v2 .. v10}, Lcom/powervision/map/ICallBack$Stub;->basicTypes(IJZFDLjava/lang/String;)V

    .line 93
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 74
    :cond_2
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

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
