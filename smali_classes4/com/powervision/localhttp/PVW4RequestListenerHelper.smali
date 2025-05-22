.class public Lcom/powervision/localhttp/PVW4RequestListenerHelper;
.super Ljava/lang/Object;
.source "PVW4RequestListenerHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PVW4RequestListenerHelp"

.field private static mSingle:Lcom/powervision/localhttp/PVW4RequestListenerHelper;


# instance fields
.field private gson:Lcom/google/gson/Gson;

.field private mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/powervision/localhttp/PVW4RequestListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    new-instance v0, Lcom/powervision/localhttp/PVW4RequestListenerHelper;

    invoke-direct {v0}, Lcom/powervision/localhttp/PVW4RequestListenerHelper;-><init>()V

    sput-object v0, Lcom/powervision/localhttp/PVW4RequestListenerHelper;->mSingle:Lcom/powervision/localhttp/PVW4RequestListenerHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/powervision/localhttp/PVW4RequestListenerHelper;->gson:Lcom/google/gson/Gson;

    .line 50
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/localhttp/PVW4RequestListenerHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method public static get()Lcom/powervision/localhttp/PVW4RequestListenerHelper;
    .locals 1

    .line 47
    sget-object v0, Lcom/powervision/localhttp/PVW4RequestListenerHelper;->mSingle:Lcom/powervision/localhttp/PVW4RequestListenerHelper;

    return-object v0
.end method


# virtual methods
.method public addListener(Lcom/powervision/localhttp/PVW4RequestListener;)V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/powervision/localhttp/PVW4RequestListenerHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/powervision/localhttp/PVW4RequestListenerHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public notifyListeners(IILjava/lang/String;)V
    .locals 5

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyListeners: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PVW4RequestListenerHelp"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "{"

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "}"

    invoke-virtual {p3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string v0, "notifyListeners: isjson "

    .line 81
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v0, p0, Lcom/powervision/localhttp/PVW4RequestListenerHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 84
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyListeners: size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    .line 87
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/powervision/localhttp/PVW4RequestListener;

    if-eqz p1, :cond_8

    const/4 v3, 0x1

    if-eq p1, v3, :cond_7

    const/4 v3, 0x2

    if-eq p1, v3, :cond_6

    const/4 v3, 0x3

    if-eq p1, v3, :cond_5

    const/4 v3, 0x5

    if-eq p1, v3, :cond_4

    const/4 v3, 0x6

    if-eq p1, v3, :cond_3

    const/16 v3, 0x13

    if-eq p1, v3, :cond_2

    const/16 v3, 0x14

    if-eq p1, v3, :cond_1

    sparse-switch p1, :sswitch_data_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    packed-switch p1, :pswitch_data_3

    packed-switch p1, :pswitch_data_4

    packed-switch p1, :pswitch_data_5

    goto :goto_0

    .line 281
    :pswitch_0
    iget-object v3, p0, Lcom/powervision/localhttp/PVW4RequestListenerHelper;->gson:Lcom/google/gson/Gson;

    new-instance v4, Lcom/powervision/localhttp/PVW4RequestListenerHelper$40;

    invoke-direct {v4, p0}, Lcom/powervision/localhttp/PVW4RequestListenerHelper$40;-><init>(Lcom/powervision/localhttp/PVW4RequestListenerHelper;)V

    .line 282
    invoke-virtual {v4}, Lcom/powervision/localhttp/PVW4RequestListenerHelper$40;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    .line 281
    invoke-virtual {v3, p3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/powervision/localhttp/entity/BaseModel;

    invoke-interface {v2, p2, v3}, Lcom/powervision/localhttp/PVW4RequestListener;->getSlowRecordRatio(ILcom/powervision/localhttp/entity/BaseModel;)V

    goto :goto_0

    .line 277
    :pswitch_1
    iget-object v3, p0, Lcom/powervision/localhttp/PVW4RequestListenerHelper;->gson:Lcom/google/gson/Gson;

    new-instance v4, Lcom/powervision/localhttp/PVW4RequestListenerHelper$39;

    invoke-direct {v4, p0}, Lcom/powervision/localhttp/PVW4RequestListenerHelper$39;-><init>(Lcom/powervision/localhttp/PVW4RequestListenerHelper;)V

    .line 278
    invoke-virtual {v4}, Lcom/powervision/localhttp/PVW4RequestListenerHelper$39;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    .line 277
    invoke-virtual {v3, p3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/powervision/localhttp/entity/BaseModel;

    invoke-interface {v2, p2, v3}, Lcom/powervision/localhttp/PVW4RequestListener;->setSlowRecordRatio(ILcom/powervision/localhttp/entity/BaseModel;)V

    goto :goto_0

    .line 266
    :pswitch_2
    iget-object v3, p0, Lcom/powervision/localhttp/PVW4RequestListenerHelper;->gson:Lcom/google/gson/Gson;

    new-instance v4, Lcom/powervision/localhttp/PVW4RequestListenerHelper$37;

    invoke-direct {v4, p0}, Lcom/powervision/localhttp/PVW4RequestListenerHelper$37;-><init>(Lcom/powervision/localhttp/PVW4RequestListenerHelper;)V

    .line 267
    invoke-virtual {v4}, Lcom/powervision/localhttp/PVW4RequestListenerHelper$37;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    .line 266
    invoke-virtual {v3, p3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/powervision/localhttp/entity/BaseModel;

    invoke-interface {v2, p2, v3}, Lcom/powervision/localhttp/PVW4RequestListener;->getDis(ILcom/powervision/localhttp/entity/BaseModel;)V

    goto :goto_0

    .line 262
    :pswitch_3
    iget-object v3, p0, Lcom/powervision/localhttp/PVW4RequestListenerHelper;->gson:Lcom/google/gson/Gson;

    new-instance v4, Lcom/powervision/localhttp/PVW4RequestListenerHelper$36;

    invoke-direct {v4, p0}, Lcom/powervision/localhttp/PVW4RequestListenerHelper$36;-><init>(Lcom/powervision/localhttp/PVW4RequestListenerHelper;)V

    .line 263
    invoke-virtual {v4}, Lcom/powervision/localhttp/PVW4RequestListenerHelper$36;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    .line 262
    invoke-virtual {v3, p3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/powervision/localhttp/entity/BaseModel;

    invoke-interface {v2, p2, v3}, Lcom/powervision/localhttp/PVW4RequestListener;->setDis(ILcom/powervision/localhttp/entity/BaseModel;)V

    goto/16 :goto_0

    .line 258
    :pswitch_4
    iget-object v3, p0, Lcom/powervision/localhttp/PVW4RequestListenerHelper;->gson:Lcom/google/gson/Gson;

    new-instance v4, Lcom/powervision/localhttp/PVW4RequestListenerHelper$35;

    invoke-direct {v4, p0}, Lcom/powervision/localhttp/PVW4RequestListenerHelper$35;-><init>(Lcom/powervision/localhttp/PVW4RequestListenerHelper;)V

    .line 259
    invoke-virtual {v4}, Lcom/powervision/localhttp/PVW4RequestListenerHelper$35;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    .line 258
    invoke-virtual {v3, p3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/powervision/localhttp/entity/BaseModel;

    invoke-interface {v2, p2, v3}, Lcom/powervision/localhttp/PVW4RequestListener;->getLdc(ILcom/powervision/localhttp/entity/BaseModel;)V

    goto/16 :goto_0

    .line 254
    :pswitch_5
    iget-object v3, p0, Lcom/powervision/localhttp/PVW4RequestListenerHelper;->gson:Lcom/google/gson/Gson;

    new-instance v4, Lcom/powervision/localhttp/PVW4RequestListenerHelper$34;

    invoke-direct {v4, p0}, Lcom/powervision/localhttp/PVW4RequestListenerHelper$34;-><init>(Lcom/powervision/localhttp/PVW4RequestListenerHelper;)V

    .line 255
    invoke-virtual {v4}, Lcom/powervision/localhttp/PVW4RequestListenerHelper$34;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    .line 254
    invoke-virtual {v3, p3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/powervision/localhttp/entity/BaseModel;

    invoke-interface {v2, p2, v3}, Lcom/powervision/localhttp/PVW4RequestListener;->setLdc(ILcom/powervision/localhttp/entity/BaseModel;)V

    goto/16 :goto_0

    .line 250
    :pswitch_6
    iget-object v3, p0, Lcom/powervision/localhttp/PVW4RequestListenerHelper;->gson:Lcom/google/gson/Gson;

    new-instance v4, Lcom/powervision/localhttp/PVW4RequestListenerHelper$33;

    invoke-direct {v4, p0}, Lcom/powervision/localhttp/PVW4RequestListenerHelper$33;-><init>(Lcom/powervision/localhttp/PVW4RequestListenerHelper;)V

    .line 251
    invoke-virtual {v4}, Lcom/powervision/localhttp/PVW4RequestListenerHelper$33;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    .line 250
    invoke-virtual {v3, p3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/powervision/localhttp/entity/BaseModel;

    invoke-interface {v2, p2, v3}, Lcom/powervision/localhttp/PVW4RequestListener;->getFlip(ILcom/powervision/localhttp/entity/BaseModel;)V

    goto/16 :goto_0

    .line 246
    :pswitch_7
    iget-object v3, p0, Lcom/powervision/localhttp/PVW4RequestListenerHelper;->gson:Lcom/google/gson/Gson;

    new-instance v4, Lcom/powervision/localhttp/PVW4RequestListenerHelper$32;

    invoke-direct {v4, p0}, Lcom/powervision/localhttp/PVW4RequestListenerHelper$32;-><init>(Lcom/powervision/localhttp/PVW4RequestListenerHelper;)V

    .line 247
    invoke-virtual {v4}, Lcom/powervision/localhttp/PVW4RequestListenerHelper$32;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    .line 246
    invoke-virtual {v3, p3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/powervision/localhttp/entity/BaseModel;

    invoke-interface {v2, p2, v3}, Lcom/powervision/localhttp/PVW4RequestListener;->setFlip(ILcom/powervision/localhttp/entity/BaseModel;)V

    goto/16 :goto_0

    .line 242
    :pswitch_8
    iget-object v3, p0, Lcom/powervision/localhttp/PVW4RequestListenerHelper;->gson:Lcom/google/gson/Gson;

    new-instance v4, Lcom/powervision/localhttp/PVW4RequestListenerHelper$31;

    invoke-direct {v4, p0}, Lcom/powervision/localhttp/PVW4RequestListenerHelper$31;-><init>(Lcom/powervision/localhttp/PVW4RequestListenerHelper;)V

    .line 243
    invoke-virtual {v4}, Lcom/powervision/localhttp/PVW4RequestListenerHelper$31;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    .line 242
    invoke-virtual {v3, p3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/powervision/localhttp/entity/BaseModel;

    invoke-interface {v2, p2, v3}, Lcom/powervision/localhttp/PVW4RequestListener;->getMultiPictureSpeed(ILcom/powervision/localhttp/entity/BaseModel;)V

    goto/16 :goto_0

    .line 238
    :pswitch_9
    iget-object v3, p0, Lcom/powervision/localhttp/PVW4RequestListenerHelper;->gson:Lcom/google/gson/Gson;

    new-instance v4, Lcom/powervision/localhttp/PVW4RequestListenerHelper$30;

    invoke-direct {v4, p0}, Lcom/powervision/localhttp/PVW4RequestListenerHelper$30;-><init>(Lcom/powervision/localhttp/PVW4RequestListenerHelper;)V

    .line 239
    invoke-virtual {v4}, Lcom/powervision/localhttp/PVW4RequestListenerHelper$30;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    .line 238
    invoke-virtual {v3, p3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/powervision/localhttp/entity/BaseModel;

    invoke-interface {v2, p2, v3}, Lcom/powervision/localhttp/PVW4RequestListener;->setMultiPictureSpeed(ILcom/powervision/localhttp/entity/BaseModel;)V

    goto/16 :goto_0

    .line 233
    :pswitch_a
    iget-object v3, p0, Lcom/powervision/localhttp/PVW4RequestListenerHelper;->gson:Lcom/google/gson/Gson;

    new-instance v4, Lcom/powervision/localhttp/PVW4RequestListenerHelper$29;

    invoke-direct {v4, p0}, Lcom/powervision/localhttp/PVW4RequestListenerHelper$29;-><init>(Lcom/powervision/localhttp/PVW4RequestListenerHelper;)V

    .line 234
    invoke-virtual {v4}, Lcom/powervision/localhttp/PVW4RequestListenerHelper$29;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    .line 233
    invoke-virtual {v3, p3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/powervision/localhttp/entity/BaseModel;

    invoke-interface {v2, p2, v3}, Lcom/powervision/localhttp/PVW4RequestListener;->getMultiPictureRatio(ILcom/powervision/localhttp/entity/BaseModel;)V

    goto/16 :goto_0

    .line 229
    :pswitch_b
    iget-object v3, p0, Lcom/powervision/localhttp/PVW4RequestListenerHelper;->gson:Lcom/google/gson/Gson;

    new-instance v4, Lcom/powervision/localhttp/PVW4RequestListenerHelper$28;

    invoke-direct {v4, p0}, Lcom/powervision/localhttp/PVW4RequestListenerHelper$28;-><init>(Lcom/powervision/localhttp/PVW4RequestListenerHelper;)V

    .line 230
    invoke-virtual {v4}, Lcom/powervision/localhttp/PVW4RequestListenerHelper$28;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    .line 229
    invoke-virtual {v3, p3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/powervision/localhttp/entity/BaseModel;

    invoke-interface {v2, p2, v3}, Lcom/powervision/localhttp/PVW4RequestListener;->setMultiPictureRatio(ILcom/powervision/localhttp/entity/BaseModel;)V

    goto/16 :goto_0

    .line 224
    :pswitch_c
    iget-object v3, p0, Lcom/powervision/localhttp/PVW4RequestListenerHelper;->gson:Lcom/google/gson/Gson;

    new-instance v4, Lcom/powervision/localhttp/PVW4RequestListenerHelper$27;

    invoke-direct {v4, p0}, Lcom/powervision/localhttp/PVW4RequestListenerHelper$27;-><init>(Lcom/powervision/localhttp/PVW4RequestListenerHelper;)V

    .line 225
    invoke-virtual {v4}, Lcom/powervision/localhttp/PVW4RequestListenerHelper$27;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    .line 224
    invoke-virtual {v3, p3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/powervision/localhttp/entity/BaseModel;

    invoke-interface {v2, p2, v3}, Lcom/powervision/localhttp/PVW4RequestListener;->getTtl(ILcom/powervision/localhttp/entity/BaseModel;)V

    goto/16 :goto_0

    .line 220
    :pswitch_d
    iget-object v3, p0, Lcom/powervision/localhttp/PVW4RequestListenerHelper;->gson:Lcom/google/gson/Gson;

    new-instance v4, Lcom/powervision/localhttp/PVW4RequestListenerHelper$26;

    invoke-direct {v4, p0}, Lcom/powervision/localhttp/PVW4RequestListenerHelper$26;-><init>(Lcom/powervision/localhttp/PVW4RequestListenerHelper;)V

    .line 221
    invoke-virtual {v4}, Lcom/powervision/localhttp/PVW4RequestListenerHelper$26;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    .line 220
    invoke-virtual {v3, p3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/powervision/localhttp/entity/BaseModel;

    invoke-interface {v2, p2, v3}, Lcom/powervision/localhttp/PVW4RequestListener;->setTtl(ILcom/powervision/localhttp/entity/BaseModel;)V

    goto/16 :goto_0

    .line 215
    :pswitch_e
    iget-object v3, p0, Lcom/powervision/localhttp/PVW4RequestListenerHelper;->gson:Lcom/google/gson/Gson;

    new-instance v4, Lcom/powervision/localhttp/PVW4RequestListenerHelper$25;

    invoke-direct {v4, p0}, Lcom/powervision/localhttp/PVW4RequestListenerHelper$25;-><init>(Lcom/powervision/localhttp/PVW4RequestListenerHelper;)V

    .line 216
    invoke-virtual {v4}, Lcom/powervision/localhttp/PVW4RequestListenerHelper$25;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    .line 215
    invoke-virtual {v3, p3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/powervision/localhttp/entity/BaseModel;

    invoke-interface {v2, p2, v3}, Lcom/powervision/localhttp/PVW4RequestListener;->getWb(ILcom/powervision/localhttp/entity/BaseModel;)V

    goto/16 :goto_0

    .line 211
    :pswitch_f
    iget-object v3, p0, Lcom/powervision/localhttp/PVW4RequestListenerHelper;->gson:Lcom/google/gson/Gson;

    new-instance v4, Lcom/powervision/localhttp/PVW4RequestListenerHelper$24;

    invoke-direct {v4, p0}, Lcom/powervision/localhttp/PVW4RequestListenerHelper$24;-><init>(Lcom/powervision/localhttp/PVW4RequestListenerHelper;)V

    .line 212
    invoke-virtual {v4}, Lcom/powervision/localhttp/PVW4RequestListenerHelper$24;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    .line 211
    invoke-virtual {v3, p3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/powervision/localhttp/entity/BaseModel;

    invoke-interface {v2, p2, v3}, Lcom/powervision/localhttp/PVW4RequestListener;->setWb(ILcom/powervision/localhttp/entity/BaseModel;)V

    goto/16 :goto_0

    .line 170
    :pswitch_10
    iget-object v3, p0, Lcom/powervision/localhttp/PVW4RequestListenerHelper;->gson:Lcom/google/gson/Gson;

    new-instance v4, Lcom/powervision/localhttp/PVW4RequestListenerHelper$19;

    invoke-direct {v4, p0}, Lcom/powervision/localhttp/PVW4RequestListenerHelper$19;-><init>(Lcom/powervision/localhttp/PVW4RequestListenerHelper;)V

    .line 171
    invoke-virtual {v4}, Lcom/powervision/localhttp/PVW4RequestListenerHelper$19;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    .line 170
    invoke-virtual {v3, p3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/powervision/localhttp/entity/BaseModel;

    invoke-interface {v2, p2, v3}, Lcom/powervision/localhttp/PVW4RequestListener;->getSinglePictureRatio(ILcom/powervision/localhttp/entity/BaseModel;)V

    goto/16 :goto_0

    .line 166
    :pswitch_11
    iget-object v3, p0, Lcom/powervision/localhttp/PVW4RequestListenerHelper;->gson:Lcom/google/gson/Gson;

    new-instance v4, Lcom/powervision/localhttp/PVW4RequestListenerHelper$18;

    invoke-direct {v4, p0}, Lcom/powervision/localhttp/PVW4RequestListenerHelper$18;-><init>(Lcom/powervision/localhttp/PVW4RequestListenerHelper;)V

    .line 167
    invoke-virtual {v4}, Lcom/powervision/localhttp/PVW4RequestListenerHelper$18;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    .line 166
    invoke-virtual {v3, p3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/powervision/localhttp/entity/BaseModel;

    invoke-interface {v2, p2, v3}, Lcom/powervision/localhttp/PVW4RequestListener;->setSinglePictureRatio(ILcom/powervision/localhttp/entity/BaseModel;)V

    goto/16 :goto_0

    .line 161
    :pswitch_12
    iget-object v3, p0, Lcom/powervision/localhttp/PVW4RequestListenerHelper;->gson:Lcom/google/gson/Gson;

    new-instance v4, Lcom/powervision/localhttp/PVW4RequestListenerHelper$17;

    invoke-direct {v4, p0}, Lcom/powervision/localhttp/PVW4RequestListenerHelper$17;-><init>(Lcom/powervision/localhttp/PVW4RequestListenerHelper;)V

    .line 162
    invoke-virtual {v4}, Lcom/powervision/localhttp/PVW4RequestListenerHelper$17;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    .line 161
    invoke-virtual {v3, p3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/powervision/localhttp/entity/BaseModel;

    invoke-interface {v2, p2, v3}, Lcom/powervision/localhttp/PVW4RequestListener;->getRecordRatio(ILcom/powervision/localhttp/entity/BaseModel;)V

    goto/16 :goto_0

    .line 157
    :pswitch_13
    iget-object v3, p0, Lcom/powervision/localhttp/PVW4RequestListenerHelper;->gson:Lcom/google/gson/Gson;

    new-instance v4, Lcom/powervision/localhttp/PVW4RequestListenerHelper$16;

    invoke-direct {v4, p0}, Lcom/powervision/localhttp/PVW4RequestListenerHelper$16;-><init>(Lcom/powervision/localhttp/PVW4RequestListenerHelper;)V

    .line 158
    invoke-virtual {v4}, Lcom/powervision/localhttp/PVW4RequestListenerHelper$16;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    .line 157
    invoke-virtual {v3, p3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/powervision/localhttp/entity/BaseModel;

    invoke-interface {v2, p2, v3}, Lcom/powervision/localhttp/PVW4RequestListener;->setRecordRatio(ILcom/powervision/localhttp/entity/BaseModel;)V

    goto/16 :goto_0

    :pswitch_14
    const-string v3, "lzqHttp"

    const-string v4, "helper\u4e2d: "

    .line 147
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object v3, p0, Lcom/powervision/localhttp/PVW4RequestListenerHelper;->gson:Lcom/google/gson/Gson;

    new-instance v4, Lcom/powervision/localhttp/PVW4RequestListenerHelper$15;

    invoke-direct {v4, p0}, Lcom/powervision/localhttp/PVW4RequestListenerHelper$15;-><init>(Lcom/powervision/localhttp/PVW4RequestListenerHelper;)V

    .line 149
    invoke-virtual {v4}, Lcom/powervision/localhttp/PVW4RequestListenerHelper$15;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    .line 148
    invoke-virtual {v3, p3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/powervision/localhttp/entity/BaseModel;

    invoke-interface {v2, p2, v3}, Lcom/powervision/localhttp/PVW4RequestListener;->getDeviceInfo(ILcom/powervision/localhttp/entity/BaseModel;)V

    goto/16 :goto_0

    .line 143
    :pswitch_15
    iget-object v3, p0, Lcom/powervision/localhttp/PVW4RequestListenerHelper;->gson:Lcom/google/gson/Gson;

    new-instance v4, Lcom/powervision/localhttp/PVW4RequestListenerHelper$14;

    invoke-direct {v4, p0}, Lcom/powervision/localhttp/PVW4RequestListenerHelper$14;-><init>(Lcom/powervision/localhttp/PVW4RequestListenerHelper;)V

    .line 144
    invoke-virtual {v4}, Lcom/powervision/localhttp/PVW4RequestListenerHelper$14;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    .line 143
    invoke-virtual {v3, p3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/powervision/localhttp/entity/BaseModel;

    invoke-interface {v2, p2, v3}, Lcom/powervision/localhttp/PVW4RequestListener;->setCameraTime(ILcom/powervision/localhttp/entity/BaseModel;)V

    goto/16 :goto_0

    .line 127
    :pswitch_16
    iget-object v3, p0, Lcom/powervision/localhttp/PVW4RequestListenerHelper;->gson:Lcom/google/gson/Gson;

    new-instance v4, Lcom/powervision/localhttp/PVW4RequestListenerHelper$10;

    invoke-direct {v4, p0}, Lcom/powervision/localhttp/PVW4RequestListenerHelper$10;-><init>(Lcom/powervision/localhttp/PVW4RequestListenerHelper;)V

    .line 128
    invoke-virtual {v4}, Lcom/powervision/localhttp/PVW4RequestListenerHelper$10;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    .line 127
    invoke-virtual {v3, p3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/powervision/localhttp/entity/BaseModel;

    invoke-interface {v2, p2, v3}, Lcom/powervision/localhttp/PVW4RequestListener;->setWorkModeSinglePicture(ILcom/powervision/localhttp/entity/BaseModel;)V

    goto/16 :goto_0

    .line 123
    :pswitch_17
    iget-object v3, p0, Lcom/powervision/localhttp/PVW4RequestListenerHelper;->gson:Lcom/google/gson/Gson;

    new-instance v4, Lcom/powervision/localhttp/PVW4RequestListenerHelper$9;

    invoke-direct {v4, p0}, Lcom/powervision/localhttp/PVW4RequestListenerHelper$9;-><init>(Lcom/powervision/localhttp/PVW4RequestListenerHelper;)V

    .line 124
    invoke-virtual {v4}, Lcom/powervision/localhttp/PVW4RequestListenerHelper$9;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    .line 123
    invoke-virtual {v3, p3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/powervision/localhttp/entity/BaseModel;

    invoke-interface {v2, p2, v3}, Lcom/powervision/localhttp/PVW4RequestListener;->setWorkModeCommonRecord(ILcom/powervision/localhttp/entity/BaseModel;)V

    goto/16 :goto_0

    .line 119
    :pswitch_18
    iget-object v3, p0, Lcom/powervision/localhttp/PVW4RequestListenerHelper;->gson:Lcom/google/gson/Gson;

    new-instance v4, Lcom/powervision/localhttp/PVW4RequestListenerHelper$8;

    invoke-direct {v4, p0}, Lcom/powervision/localhttp/PVW4RequestListenerHelper$8;-><init>(Lcom/powervision/localhttp/PVW4RequestListenerHelper;)V

    .line 120
    invoke-virtual {v4}, Lcom/powervision/localhttp/PVW4RequestListenerHelper$8;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    .line 119
    invoke-virtual {v3, p3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/powervision/localhttp/entity/BaseModel;

    invoke-interface {v2, p2, v3}, Lcom/powervision/localhttp/PVW4RequestListener;->getSDState(ILcom/powervision/localhttp/entity/BaseModel;)V

    goto/16 :goto_0

    .line 289
    :sswitch_0
    iget-object v3, p0, Lcom/powervision/localhttp/PVW4RequestListenerHelper;->gson:Lcom/google/gson/Gson;

    new-instance v4, Lcom/powervision/localhttp/PVW4RequestListenerHelper$42;

    invoke-direct {v4, p0}, Lcom/powervision/localhttp/PVW4RequestListenerHelper$42;-><init>(Lcom/powervision/localhttp/PVW4RequestListenerHelper;)V

    .line 290
    invoke-virtual {v4}, Lcom/powervision/localhttp/PVW4RequestListenerHelper$42;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    .line 289
    invoke-virtual {v3, p3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/powervision/localhttp/entity/BaseModel;

    invoke-interface {v2, p2, v3}, Lcom/powervision/localhttp/PVW4RequestListener;->setSeekerIp(ILcom/powervision/localhttp/entity/BaseModel;)V

    goto/16 :goto_0

    .line 270
    :sswitch_1
    iget-object v3, p0, Lcom/powervision/localhttp/PVW4RequestListenerHelper;->gson:Lcom/google/gson/Gson;

    new-instance v4, Lcom/powervision/localhttp/PVW4RequestListenerHelper$38;

    invoke-direct {v4, p0}, Lcom/powervision/localhttp/PVW4RequestListenerHelper$38;-><init>(Lcom/powervision/localhttp/PVW4RequestListenerHelper;)V

    .line 271
    invoke-virtual {v4}, Lcom/powervision/localhttp/PVW4RequestListenerHelper$38;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    .line 270
    invoke-virtual {v3, p3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/powervision/localhttp/entity/BaseModel;

    invoke-interface {v2, p2, v3}, Lcom/powervision/localhttp/PVW4RequestListener;->setWorkModeSlowRecord(ILcom/powervision/localhttp/entity/BaseModel;)V

    goto/16 :goto_0

    .line 285
    :sswitch_2
    iget-object v3, p0, Lcom/powervision/localhttp/PVW4RequestListenerHelper;->gson:Lcom/google/gson/Gson;

    new-instance v4, Lcom/powervision/localhttp/PVW4RequestListenerHelper$41;

    invoke-direct {v4, p0}, Lcom/powervision/localhttp/PVW4RequestListenerHelper$41;-><init>(Lcom/powervision/localhttp/PVW4RequestListenerHelper;)V

    .line 286
    invoke-virtual {v4}, Lcom/powervision/localhttp/PVW4RequestListenerHelper$41;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    .line 285
    invoke-virtual {v3, p3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/powervision/localhttp/entity/BaseModel;

    invoke-interface {v2, p2, v3}, Lcom/powervision/localhttp/PVW4RequestListener;->getAllParams(ILcom/powervision/localhttp/entity/BaseModel;)V

    goto/16 :goto_0

    .line 202
    :sswitch_3
    iget-object v3, p0, Lcom/powervision/localhttp/PVW4RequestListenerHelper;->gson:Lcom/google/gson/Gson;

    new-instance v4, Lcom/powervision/localhttp/PVW4RequestListenerHelper$23;

    invoke-direct {v4, p0}, Lcom/powervision/localhttp/PVW4RequestListenerHelper$23;-><init>(Lcom/powervision/localhttp/PVW4RequestListenerHelper;)V

    .line 203
    invoke-virtual {v4}, Lcom/powervision/localhttp/PVW4RequestListenerHelper$23;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    .line 202
    invoke-virtual {v3, p3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/powervision/localhttp/entity/BaseModel;

    invoke-interface {v2, p2, v3}, Lcom/powervision/localhttp/PVW4RequestListener;->getEv(ILcom/powervision/localhttp/entity/BaseModel;)V

    goto/16 :goto_0

    .line 198
    :sswitch_4
    iget-object v3, p0, Lcom/powervision/localhttp/PVW4RequestListenerHelper;->gson:Lcom/google/gson/Gson;

    new-instance v4, Lcom/powervision/localhttp/PVW4RequestListenerHelper$22;

    invoke-direct {v4, p0}, Lcom/powervision/localhttp/PVW4RequestListenerHelper$22;-><init>(Lcom/powervision/localhttp/PVW4RequestListenerHelper;)V

    .line 199
    invoke-virtual {v4}, Lcom/powervision/localhttp/PVW4RequestListenerHelper$22;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    .line 198
    invoke-virtual {v3, p3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/powervision/localhttp/entity/BaseModel;

    invoke-interface {v2, p2, v3}, Lcom/powervision/localhttp/PVW4RequestListener;->setEv(ILcom/powervision/localhttp/entity/BaseModel;)V

    goto/16 :goto_0

    .line 185
    :sswitch_5
    iget-object v3, p0, Lcom/powervision/localhttp/PVW4RequestListenerHelper;->gson:Lcom/google/gson/Gson;

    new-instance v4, Lcom/powervision/localhttp/PVW4RequestListenerHelper$21;

    invoke-direct {v4, p0}, Lcom/powervision/localhttp/PVW4RequestListenerHelper$21;-><init>(Lcom/powervision/localhttp/PVW4RequestListenerHelper;)V

    .line 186
    invoke-virtual {v4}, Lcom/powervision/localhttp/PVW4RequestListenerHelper$21;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    .line 185
    invoke-virtual {v3, p3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/powervision/localhttp/entity/BaseModel;

    invoke-interface {v2, p2, v3}, Lcom/powervision/localhttp/PVW4RequestListener;->getIso(ILcom/powervision/localhttp/entity/BaseModel;)V

    goto/16 :goto_0

    .line 181
    :sswitch_6
    iget-object v3, p0, Lcom/powervision/localhttp/PVW4RequestListenerHelper;->gson:Lcom/google/gson/Gson;

    new-instance v4, Lcom/powervision/localhttp/PVW4RequestListenerHelper$20;

    invoke-direct {v4, p0}, Lcom/powervision/localhttp/PVW4RequestListenerHelper$20;-><init>(Lcom/powervision/localhttp/PVW4RequestListenerHelper;)V

    .line 182
    invoke-virtual {v4}, Lcom/powervision/localhttp/PVW4RequestListenerHelper$20;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    .line 181
    invoke-virtual {v3, p3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/powervision/localhttp/entity/BaseModel;

    invoke-interface {v2, p2, v3}, Lcom/powervision/localhttp/PVW4RequestListener;->setIso(ILcom/powervision/localhttp/entity/BaseModel;)V

    goto/16 :goto_0

    .line 131
    :sswitch_7
    iget-object v3, p0, Lcom/powervision/localhttp/PVW4RequestListenerHelper;->gson:Lcom/google/gson/Gson;

    new-instance v4, Lcom/powervision/localhttp/PVW4RequestListenerHelper$11;

    invoke-direct {v4, p0}, Lcom/powervision/localhttp/PVW4RequestListenerHelper$11;-><init>(Lcom/powervision/localhttp/PVW4RequestListenerHelper;)V

    .line 132
    invoke-virtual {v4}, Lcom/powervision/localhttp/PVW4RequestListenerHelper$11;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    .line 131
    invoke-virtual {v3, p3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/powervision/localhttp/entity/BaseModel;

    invoke-interface {v2, p2, v3}, Lcom/powervision/localhttp/PVW4RequestListener;->setWorkModeMultiPicture(ILcom/powervision/localhttp/entity/BaseModel;)V

    goto/16 :goto_0

    .line 115
    :sswitch_8
    iget-object v3, p0, Lcom/powervision/localhttp/PVW4RequestListenerHelper;->gson:Lcom/google/gson/Gson;

    new-instance v4, Lcom/powervision/localhttp/PVW4RequestListenerHelper$7;

    invoke-direct {v4, p0}, Lcom/powervision/localhttp/PVW4RequestListenerHelper$7;-><init>(Lcom/powervision/localhttp/PVW4RequestListenerHelper;)V

    .line 116
    invoke-virtual {v4}, Lcom/powervision/localhttp/PVW4RequestListenerHelper$7;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    .line 115
    invoke-virtual {v3, p3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/powervision/localhttp/entity/BaseModel;

    invoke-interface {v2, p2, v3}, Lcom/powervision/localhttp/PVW4RequestListener;->deleteFile(ILcom/powervision/localhttp/entity/BaseModel;)V

    goto/16 :goto_0

    .line 139
    :cond_1
    iget-object v3, p0, Lcom/powervision/localhttp/PVW4RequestListenerHelper;->gson:Lcom/google/gson/Gson;

    new-instance v4, Lcom/powervision/localhttp/PVW4RequestListenerHelper$13;

    invoke-direct {v4, p0}, Lcom/powervision/localhttp/PVW4RequestListenerHelper$13;-><init>(Lcom/powervision/localhttp/PVW4RequestListenerHelper;)V

    .line 140
    invoke-virtual {v4}, Lcom/powervision/localhttp/PVW4RequestListenerHelper$13;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    .line 139
    invoke-virtual {v3, p3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/powervision/localhttp/entity/BaseModel;

    invoke-interface {v2, p2, v3}, Lcom/powervision/localhttp/PVW4RequestListener;->formatSDCard(ILcom/powervision/localhttp/entity/BaseModel;)V

    goto/16 :goto_0

    .line 135
    :cond_2
    iget-object v3, p0, Lcom/powervision/localhttp/PVW4RequestListenerHelper;->gson:Lcom/google/gson/Gson;

    new-instance v4, Lcom/powervision/localhttp/PVW4RequestListenerHelper$12;

    invoke-direct {v4, p0}, Lcom/powervision/localhttp/PVW4RequestListenerHelper$12;-><init>(Lcom/powervision/localhttp/PVW4RequestListenerHelper;)V

    .line 136
    invoke-virtual {v4}, Lcom/powervision/localhttp/PVW4RequestListenerHelper$12;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    .line 135
    invoke-virtual {v3, p3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/powervision/localhttp/entity/BaseModel;

    invoke-interface {v2, p2, v3}, Lcom/powervision/localhttp/PVW4RequestListener;->resetCamera(ILcom/powervision/localhttp/entity/BaseModel;)V

    goto/16 :goto_0

    .line 111
    :cond_3
    iget-object v3, p0, Lcom/powervision/localhttp/PVW4RequestListenerHelper;->gson:Lcom/google/gson/Gson;

    new-instance v4, Lcom/powervision/localhttp/PVW4RequestListenerHelper$6;

    invoke-direct {v4, p0}, Lcom/powervision/localhttp/PVW4RequestListenerHelper$6;-><init>(Lcom/powervision/localhttp/PVW4RequestListenerHelper;)V

    .line 112
    invoke-virtual {v4}, Lcom/powervision/localhttp/PVW4RequestListenerHelper$6;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    .line 111
    invoke-virtual {v3, p3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/powervision/localhttp/entity/BaseModel;

    invoke-interface {v2, p2, v3}, Lcom/powervision/localhttp/PVW4RequestListener;->getFileList(ILcom/powervision/localhttp/entity/BaseModel;)V

    goto/16 :goto_0

    .line 107
    :cond_4
    iget-object v3, p0, Lcom/powervision/localhttp/PVW4RequestListenerHelper;->gson:Lcom/google/gson/Gson;

    new-instance v4, Lcom/powervision/localhttp/PVW4RequestListenerHelper$5;

    invoke-direct {v4, p0}, Lcom/powervision/localhttp/PVW4RequestListenerHelper$5;-><init>(Lcom/powervision/localhttp/PVW4RequestListenerHelper;)V

    .line 108
    invoke-virtual {v4}, Lcom/powervision/localhttp/PVW4RequestListenerHelper$5;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    .line 107
    invoke-virtual {v3, p3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/powervision/localhttp/entity/BaseModel;

    invoke-interface {v2, p2, v3}, Lcom/powervision/localhttp/PVW4RequestListener;->getFileCount(ILcom/powervision/localhttp/entity/BaseModel;)V

    goto/16 :goto_0

    .line 103
    :cond_5
    iget-object v3, p0, Lcom/powervision/localhttp/PVW4RequestListenerHelper;->gson:Lcom/google/gson/Gson;

    new-instance v4, Lcom/powervision/localhttp/PVW4RequestListenerHelper$4;

    invoke-direct {v4, p0}, Lcom/powervision/localhttp/PVW4RequestListenerHelper$4;-><init>(Lcom/powervision/localhttp/PVW4RequestListenerHelper;)V

    .line 104
    invoke-virtual {v4}, Lcom/powervision/localhttp/PVW4RequestListenerHelper$4;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    .line 103
    invoke-virtual {v3, p3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/powervision/localhttp/entity/BaseModel;

    invoke-interface {v2, p2, v3}, Lcom/powervision/localhttp/PVW4RequestListener;->takePhoto(ILcom/powervision/localhttp/entity/BaseModel;)V

    goto/16 :goto_0

    :cond_6
    const-string v3, "notifyListeners: getWorkMode 222"

    .line 98
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-object v3, p0, Lcom/powervision/localhttp/PVW4RequestListenerHelper;->gson:Lcom/google/gson/Gson;

    new-instance v4, Lcom/powervision/localhttp/PVW4RequestListenerHelper$3;

    invoke-direct {v4, p0}, Lcom/powervision/localhttp/PVW4RequestListenerHelper$3;-><init>(Lcom/powervision/localhttp/PVW4RequestListenerHelper;)V

    .line 100
    invoke-virtual {v4}, Lcom/powervision/localhttp/PVW4RequestListenerHelper$3;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    .line 99
    invoke-virtual {v3, p3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/powervision/localhttp/entity/BaseModel;

    invoke-interface {v2, p2, v3}, Lcom/powervision/localhttp/PVW4RequestListener;->getWorkMode(ILcom/powervision/localhttp/entity/BaseModel;)V

    goto/16 :goto_0

    .line 94
    :cond_7
    iget-object v3, p0, Lcom/powervision/localhttp/PVW4RequestListenerHelper;->gson:Lcom/google/gson/Gson;

    new-instance v4, Lcom/powervision/localhttp/PVW4RequestListenerHelper$2;

    invoke-direct {v4, p0}, Lcom/powervision/localhttp/PVW4RequestListenerHelper$2;-><init>(Lcom/powervision/localhttp/PVW4RequestListenerHelper;)V

    .line 95
    invoke-virtual {v4}, Lcom/powervision/localhttp/PVW4RequestListenerHelper$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    .line 94
    invoke-virtual {v3, p3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/powervision/localhttp/entity/BaseModel;

    invoke-interface {v2, p2, v3}, Lcom/powervision/localhttp/PVW4RequestListener;->stopRecord(ILcom/powervision/localhttp/entity/BaseModel;)V

    goto/16 :goto_0

    .line 90
    :cond_8
    iget-object v3, p0, Lcom/powervision/localhttp/PVW4RequestListenerHelper;->gson:Lcom/google/gson/Gson;

    new-instance v4, Lcom/powervision/localhttp/PVW4RequestListenerHelper$1;

    invoke-direct {v4, p0}, Lcom/powervision/localhttp/PVW4RequestListenerHelper$1;-><init>(Lcom/powervision/localhttp/PVW4RequestListenerHelper;)V

    .line 91
    invoke-virtual {v4}, Lcom/powervision/localhttp/PVW4RequestListenerHelper$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    .line 90
    invoke-virtual {v3, p3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/powervision/localhttp/entity/BaseModel;

    invoke-interface {v2, p2, v3}, Lcom/powervision/localhttp/PVW4RequestListener;->startRecord(ILcom/powervision/localhttp/entity/BaseModel;)V

    goto/16 :goto_0

    :cond_9
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_8
        0x11 -> :sswitch_7
        0x27 -> :sswitch_6
        0x28 -> :sswitch_6
        0x29 -> :sswitch_6
        0x2a -> :sswitch_6
        0x2b -> :sswitch_6
        0x2c -> :sswitch_6
        0x2d -> :sswitch_6
        0x2e -> :sswitch_6
        0x2f -> :sswitch_5
        0x30 -> :sswitch_4
        0x31 -> :sswitch_4
        0x32 -> :sswitch_4
        0x33 -> :sswitch_4
        0x34 -> :sswitch_4
        0x35 -> :sswitch_4
        0x36 -> :sswitch_4
        0x37 -> :sswitch_4
        0x38 -> :sswitch_4
        0x39 -> :sswitch_4
        0x3a -> :sswitch_3
        0x89 -> :sswitch_2
        0x8a -> :sswitch_1
        0x8d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_18
        :pswitch_17
        :pswitch_16
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_11
        :pswitch_10
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x43
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_d
        :pswitch_c
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x6a
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_9
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x75
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x81
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public removeListener(Lcom/powervision/localhttp/PVW4RequestListener;)V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/powervision/localhttp/PVW4RequestListenerHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/powervision/localhttp/PVW4RequestListenerHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
