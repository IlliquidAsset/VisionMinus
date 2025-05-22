.class public abstract Lcom/powervision/map/IService$Stub;
.super Landroid/os/Binder;
.source "IService.java"

# interfaces
.implements Lcom/powervision/map/IService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/map/IService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/map/IService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.powervision.map.IService"

.field static final TRANSACTION_basicTypes:I = 0x1

.field static final TRANSACTION_bindTheCell:I = 0x3

.field static final TRANSACTION_doNetWork:I = 0x6

.field static final TRANSACTION_resgister:I = 0x2

.field static final TRANSACTION_set:I = 0x7

.field static final TRANSACTION_startLocation:I = 0x5

.field static final TRANSACTION_stopLocation:I = 0x8

.field static final TRANSACTION_unResgister:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.powervision.map.IService"

    .line 52
    invoke-virtual {p0, p0, v0}, Lcom/powervision/map/IService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/powervision/map/IService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.powervision.map.IService"

    .line 63
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 64
    instance-of v1, v0, Lcom/powervision/map/IService;

    if-eqz v1, :cond_1

    .line 65
    check-cast v0, Lcom/powervision/map/IService;

    return-object v0

    .line 67
    :cond_1
    new-instance v0, Lcom/powervision/map/IService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/powervision/map/IService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/powervision/map/IService;
    .locals 1

    .line 380
    sget-object v0, Lcom/powervision/map/IService$Stub$Proxy;->sDefaultImpl:Lcom/powervision/map/IService;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/powervision/map/IService;)Z
    .locals 1

    .line 370
    sget-object v0, Lcom/powervision/map/IService$Stub$Proxy;->sDefaultImpl:Lcom/powervision/map/IService;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 374
    sput-object p0, Lcom/powervision/map/IService$Stub$Proxy;->sDefaultImpl:Lcom/powervision/map/IService;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 371
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

    const-string v2, "com.powervision.map.IService"

    if-eq p1, v0, :cond_3

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 173
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 164
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 167
    :cond_0
    invoke-virtual {p0, v0}, Lcom/powervision/map/IService$Stub;->stopLocation(Z)V

    .line 168
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 153
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 157
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 158
    invoke-virtual {p0, p1, p2}, Lcom/powervision/map/IService$Stub;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 140
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 144
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 146
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 147
    invoke-virtual {p0, p1, p4, p2}, Lcom/powervision/map/IService$Stub;->doNetWork(ILjava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 131
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 134
    :cond_1
    invoke-virtual {p0, v0}, Lcom/powervision/map/IService$Stub;->startLocation(Z)V

    .line 135
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 122
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/map/ICallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/powervision/map/ICallBack;

    move-result-object p1

    .line 125
    invoke-virtual {p0, p1}, Lcom/powervision/map/IService$Stub;->unResgister(Lcom/powervision/map/ICallBack;)V

    .line 126
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 115
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0}, Lcom/powervision/map/IService$Stub;->bindTheCell()V

    .line 117
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 104
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/map/ICallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/powervision/map/ICallBack;

    move-result-object p1

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 109
    invoke-virtual {p0, p1, p2}, Lcom/powervision/map/IService$Stub;->resgister(Lcom/powervision/map/ICallBack;I)V

    .line 110
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 85
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    const/4 v6, 0x1

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    .line 93
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v7

    .line 95
    invoke-virtual {p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v8

    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    move-object v2, p0

    .line 98
    invoke-virtual/range {v2 .. v10}, Lcom/powervision/map/IService$Stub;->basicTypes(IJZFDLjava/lang/String;)V

    .line 99
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 80
    :cond_3
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
