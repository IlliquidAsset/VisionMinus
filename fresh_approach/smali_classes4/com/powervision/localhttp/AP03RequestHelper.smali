.class public Lcom/powervision/localhttp/AP03RequestHelper;
.super Ljava/lang/Object;
.source "AP03RequestHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PVW4RequestListenerHelp"

.field private static mSingle:Lcom/powervision/localhttp/AP03RequestHelper;


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

    .line 22
    new-instance v0, Lcom/powervision/localhttp/AP03RequestHelper;

    invoke-direct {v0}, Lcom/powervision/localhttp/AP03RequestHelper;-><init>()V

    sput-object v0, Lcom/powervision/localhttp/AP03RequestHelper;->mSingle:Lcom/powervision/localhttp/AP03RequestHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/powervision/localhttp/AP03RequestHelper;->gson:Lcom/google/gson/Gson;

    .line 34
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/localhttp/AP03RequestHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method public static get()Lcom/powervision/localhttp/AP03RequestHelper;
    .locals 1

    .line 31
    sget-object v0, Lcom/powervision/localhttp/AP03RequestHelper;->mSingle:Lcom/powervision/localhttp/AP03RequestHelper;

    return-object v0
.end method


# virtual methods
.method public addListener(Lcom/powervision/localhttp/PVW4RequestListener;)V
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/powervision/localhttp/AP03RequestHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/powervision/localhttp/AP03RequestHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public notifyListeners(IILjava/lang/String;)V
    .locals 4

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "media---notifyListeners: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "{"

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "}"

    invoke-virtual {p3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/powervision/localhttp/AP03RequestHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 67
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "media--notifyListeners: size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 70
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/localhttp/PVW4RequestListener;

    const-string v2, "PVW4RequestListenerHelp"

    const/4 v3, 0x1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    if-ne p2, v3, :cond_1

    .line 115
    sput-boolean v3, Lcom/powervision/base/utils/CacheUtil;->IS_MEDIA_DELETE_SUCCESS:Z

    .line 117
    :cond_1
    invoke-interface {v1, p2, p3}, Lcom/powervision/localhttp/PVW4RequestListener;->deleteBurstData(ILjava/lang/String;)V

    goto :goto_0

    :pswitch_2
    if-ne p2, v3, :cond_2

    .line 108
    sput-boolean v3, Lcom/powervision/base/utils/CacheUtil;->IS_MEDIA_DELETE_SUCCESS:Z

    .line 110
    :cond_2
    invoke-interface {v1, p2, p3}, Lcom/powervision/localhttp/PVW4RequestListener;->deleteData(ILjava/lang/String;)V

    goto :goto_0

    .line 103
    :pswitch_3
    invoke-interface {v1, p2, p3}, Lcom/powervision/localhttp/PVW4RequestListener;->cancelSaveData(ILjava/lang/String;)V

    goto :goto_0

    .line 100
    :pswitch_4
    invoke-interface {v1, p2, p3}, Lcom/powervision/localhttp/PVW4RequestListener;->saveData(ILjava/lang/String;)V

    goto :goto_0

    .line 97
    :pswitch_5
    invoke-interface {v1, p2, p3}, Lcom/powervision/localhttp/PVW4RequestListener;->getAllData(ILjava/lang/String;)V

    goto :goto_0

    .line 84
    :pswitch_6
    invoke-interface {v1, p2, p3}, Lcom/powervision/localhttp/PVW4RequestListener;->getCurrentState(ILjava/lang/String;)V

    goto :goto_0

    .line 90
    :pswitch_7
    invoke-interface {v1, p2, p3}, Lcom/powervision/localhttp/PVW4RequestListener;->switch2RAM(ILjava/lang/String;)V

    goto :goto_0

    .line 87
    :pswitch_8
    invoke-interface {v1, p2, p3}, Lcom/powervision/localhttp/PVW4RequestListener;->switch2SD(ILjava/lang/String;)V

    goto :goto_0

    :pswitch_9
    const-string v3, "notifyListeners: DELETE_MEDIA_PHOTO"

    .line 79
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v2, p0, Lcom/powervision/localhttp/AP03RequestHelper;->gson:Lcom/google/gson/Gson;

    new-instance v3, Lcom/powervision/localhttp/AP03RequestHelper$1;

    invoke-direct {v3, p0}, Lcom/powervision/localhttp/AP03RequestHelper$1;-><init>(Lcom/powervision/localhttp/AP03RequestHelper;)V

    .line 81
    invoke-virtual {v3}, Lcom/powervision/localhttp/AP03RequestHelper$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    .line 80
    invoke-virtual {v2, p3, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/powervision/localhttp/entity/BaseModel;

    invoke-interface {v1, p2, v2}, Lcom/powervision/localhttp/PVW4RequestListener;->deleteFile(ILcom/powervision/localhttp/entity/BaseModel;)V

    goto :goto_0

    :pswitch_a
    const-string v3, "notifyListeners: GET_MEDIA_PHOTO"

    .line 74
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-interface {v1, p2, p3}, Lcom/powervision/localhttp/PVW4RequestListener;->getMediaFile(ILjava/lang/String;)V

    goto :goto_0

    :cond_3
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public removeListener(Lcom/powervision/localhttp/PVW4RequestListener;)V
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/powervision/localhttp/AP03RequestHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/powervision/localhttp/AP03RequestHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
