.class public abstract Lcom/powervision/gcs/ICallBack$Stub;
.super Landroid/os/Binder;
.source "ICallBack.java"

# interfaces
.implements Lcom/powervision/gcs/ICallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/ICallBack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/gcs/ICallBack$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.powervision.gcs.ICallBack"

.field static final TRANSACTION_basicTypes:I = 0x1

.field static final TRANSACTION_getPersonPositon:I = 0x3

.field static final TRANSACTION_getResult:I = 0x2

.field static final TRANSACTION_isChina:I = 0x4

.field static final TRANSACTION_preIsOver:I = 0x6

.field static final TRANSACTION_setAddress:I = 0x7

.field static final TRANSACTION_setMapType:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.powervision.gcs.ICallBack"

    .line 49
    invoke-virtual {p0, p0, v0}, Lcom/powervision/gcs/ICallBack$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/powervision/gcs/ICallBack;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.powervision.gcs.ICallBack"

    .line 60
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 61
    instance-of v1, v0, Lcom/powervision/gcs/ICallBack;

    if-eqz v1, :cond_1

    .line 62
    check-cast v0, Lcom/powervision/gcs/ICallBack;

    return-object v0

    .line 64
    :cond_1
    new-instance v0, Lcom/powervision/gcs/ICallBack$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/ICallBack$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/powervision/gcs/ICallBack;
    .locals 1

    .line 339
    sget-object v0, Lcom/powervision/gcs/ICallBack$Stub$Proxy;->sDefaultImpl:Lcom/powervision/gcs/ICallBack;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/powervision/gcs/ICallBack;)Z
    .locals 1

    .line 329
    sget-object v0, Lcom/powervision/gcs/ICallBack$Stub$Proxy;->sDefaultImpl:Lcom/powervision/gcs/ICallBack;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 333
    sput-object p0, Lcom/powervision/gcs/ICallBack$Stub$Proxy;->sDefaultImpl:Lcom/powervision/gcs/ICallBack;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 330
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

    const-string v2, "com.powervision.gcs.ICallBack"

    if-eq p1, v0, :cond_2

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 155
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 146
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 149
    invoke-virtual {p0, p1}, Lcom/powervision/gcs/ICallBack$Stub;->setAddress(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 139
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p0}, Lcom/powervision/gcs/ICallBack$Stub;->preIsOver()V

    .line 141
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 130
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 133
    invoke-virtual {p0, p1}, Lcom/powervision/gcs/ICallBack$Stub;->setMapType(I)V

    .line 134
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 121
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 124
    :cond_0
    invoke-virtual {p0, v0}, Lcom/powervision/gcs/ICallBack$Stub;->isChina(Z)V

    .line 125
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 110
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    .line 114
    invoke-virtual {p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide p1

    .line 115
    invoke-virtual {p0, v2, v3, p1, p2}, Lcom/powervision/gcs/ICallBack$Stub;->getPersonPositon(DD)V

    .line 116
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 101
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 104
    invoke-virtual {p0, p1}, Lcom/powervision/gcs/ICallBack$Stub;->getResult(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 82
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    .line 90
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v7

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v8

    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    move-object v2, p0

    .line 95
    invoke-virtual/range {v2 .. v10}, Lcom/powervision/gcs/ICallBack$Stub;->basicTypes(IJZFDLjava/lang/String;)V

    .line 96
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 77
    :cond_2
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
