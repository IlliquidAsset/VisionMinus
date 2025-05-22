.class public abstract Lcom/powervision/gcs/IService$Stub;
.super Landroid/os/Binder;
.source "IService.java"

# interfaces
.implements Lcom/powervision/gcs/IService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/IService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/gcs/IService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.powervision.gcs.IService"

.field static final TRANSACTION_basicTypes:I = 0x1

.field static final TRANSACTION_bindTheCell:I = 0x3

.field static final TRANSACTION_doNetWork:I = 0x6

.field static final TRANSACTION_focePreLocate:I = 0xb

.field static final TRANSACTION_kill:I = 0xc

.field static final TRANSACTION_resgister:I = 0x2

.field static final TRANSACTION_set:I = 0x7

.field static final TRANSACTION_startHardPreLocate:I = 0x9

.field static final TRANSACTION_startLocation:I = 0x5

.field static final TRANSACTION_startPreLocate4G:I = 0xa

.field static final TRANSACTION_stopGaodeLocate:I = 0xd

.field static final TRANSACTION_stopGoogleLocate:I = 0xe

.field static final TRANSACTION_stopLocation:I = 0x8

.field static final TRANSACTION_unResgister:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 69
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.powervision.gcs.IService"

    .line 70
    invoke-virtual {p0, p0, v0}, Lcom/powervision/gcs/IService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/powervision/gcs/IService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.powervision.gcs.IService"

    .line 81
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 82
    instance-of v1, v0, Lcom/powervision/gcs/IService;

    if-eqz v1, :cond_1

    .line 83
    check-cast v0, Lcom/powervision/gcs/IService;

    return-object v0

    .line 85
    :cond_1
    new-instance v0, Lcom/powervision/gcs/IService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/IService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/powervision/gcs/IService;
    .locals 1

    .line 557
    sget-object v0, Lcom/powervision/gcs/IService$Stub$Proxy;->sDefaultImpl:Lcom/powervision/gcs/IService;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/powervision/gcs/IService;)Z
    .locals 1

    .line 547
    sget-object v0, Lcom/powervision/gcs/IService$Stub$Proxy;->sDefaultImpl:Lcom/powervision/gcs/IService;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 551
    sput-object p0, Lcom/powervision/gcs/IService$Stub$Proxy;->sDefaultImpl:Lcom/powervision/gcs/IService;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 548
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

    const-string v2, "com.powervision.gcs.IService"

    if-eq p1, v0, :cond_3

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 235
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 228
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 229
    invoke-virtual {p0}, Lcom/powervision/gcs/IService$Stub;->stopGoogleLocate()V

    .line 230
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 221
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 222
    invoke-virtual {p0}, Lcom/powervision/gcs/IService$Stub;->stopGaodeLocate()V

    .line 223
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 214
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 215
    invoke-virtual {p0}, Lcom/powervision/gcs/IService$Stub;->kill()V

    .line 216
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 207
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p0}, Lcom/powervision/gcs/IService$Stub;->focePreLocate()V

    .line 209
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 200
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 201
    invoke-virtual {p0}, Lcom/powervision/gcs/IService$Stub;->startPreLocate4G()V

    .line 202
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 191
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 194
    :cond_0
    invoke-virtual {p0, v0}, Lcom/powervision/gcs/IService$Stub;->startHardPreLocate(Z)V

    .line 195
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 184
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p0}, Lcom/powervision/gcs/IService$Stub;->stopLocation()V

    .line 186
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 171
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 175
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 177
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 178
    invoke-virtual {p0, p1, p4, p2}, Lcom/powervision/gcs/IService$Stub;->set(Ljava/lang/String;Ljava/lang/String;I)V

    .line 179
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 158
    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 162
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 164
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 165
    invoke-virtual {p0, p1, p4, p2}, Lcom/powervision/gcs/IService$Stub;->doNetWork(ILjava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 149
    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 152
    :cond_1
    invoke-virtual {p0, v0}, Lcom/powervision/gcs/IService$Stub;->startLocation(Z)V

    .line 153
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 140
    :pswitch_a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/gcs/ICallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/powervision/gcs/ICallBack;

    move-result-object p1

    .line 143
    invoke-virtual {p0, p1}, Lcom/powervision/gcs/IService$Stub;->unResgister(Lcom/powervision/gcs/ICallBack;)V

    .line 144
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 133
    :pswitch_b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p0}, Lcom/powervision/gcs/IService$Stub;->bindTheCell()V

    .line 135
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 122
    :pswitch_c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/gcs/ICallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/powervision/gcs/ICallBack;

    move-result-object p1

    .line 126
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 127
    invoke-virtual {p0, p1, p2}, Lcom/powervision/gcs/IService$Stub;->resgister(Lcom/powervision/gcs/ICallBack;I)V

    .line 128
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 103
    :pswitch_d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 107
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    const/4 v6, 0x1

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    .line 111
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v7

    .line 113
    invoke-virtual {p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v8

    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    move-object v2, p0

    .line 116
    invoke-virtual/range {v2 .. v10}, Lcom/powervision/gcs/IService$Stub;->basicTypes(IJZFDLjava/lang/String;)V

    .line 117
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 98
    :cond_3
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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
