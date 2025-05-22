.class Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$11;
.super Ljava/lang/Object;
.source "PVW4FirmWareUpdateManager.java"

# interfaces
.implements Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$BodyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public needRestart:Z

.field final synthetic this$0:Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;)V
    .locals 0

    .line 1058
    iput-object p1, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$11;->this$0:Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 1059
    iput-boolean p1, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$11;->needRestart:Z

    return-void
.end method


# virtual methods
.method public checkBody(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const-string v0, "lzqW4Firm"

    const-string v1, " ===== checkBody ====="

    .line 1065
    invoke-static {v0, v1}, Lcom/powervision/base/utils/L;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1066
    iget-object v0, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$11;->this$0:Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;

    invoke-virtual {v0}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->getLoclBodyVersion()V

    const-string v0, "lzqW4Firm"

    .line 1067
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " \u672c\u5730\u7248\u672c\u53f7\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    sget-object v3, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->body_local_firmwares:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/powervision/base/utils/L;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1068
    sput-boolean v0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->hasDl01:Z

    const-string v1, ""

    const-string v2, ""

    const-string v3, "0"

    const-string v4, "0"

    const-string v5, "0"

    .line 1074
    iget-object v6, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$11;->this$0:Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;

    invoke-static {v6}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->access$600(Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;)Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$BodyThread;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 1075
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1076
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 1077
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 1081
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 1082
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 1085
    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "PVW4_"

    .line 1086
    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "PVW4_"

    const-string p2, ""

    .line 1087
    invoke-virtual {v2, p1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "_"

    .line 1088
    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 1090
    array-length p2, p1

    const/4 v2, 0x3

    if-ne p2, v2, :cond_4

    const/4 p2, 0x0

    .line 1091
    :goto_0
    array-length v2, p1

    if-ge p2, v2, :cond_4

    .line 1092
    aget-object v2, p1, p2

    const-string v6, "MC-"

    .line 1093
    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v4, "MC-"

    const-string v6, ""

    .line 1094
    invoke-virtual {v2, v4, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_2
    const-string v6, "DL-"

    .line 1096
    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v5, "DL-"

    const-string v6, ""

    .line 1097
    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    :cond_3
    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 1107
    :cond_4
    iget-object p1, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$11;->this$0:Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;

    invoke-virtual {p1, v4, v3, v5}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->compareLocalWithBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1110
    iget-object p1, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$11;->this$0:Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;

    invoke-static {p1}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->access$300(Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 1111
    :try_start_0
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->isShipConnected()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 1112
    iget-object p2, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$11;->this$0:Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;

    iget-object p2, p2, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->mViews:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_5

    .line 1113
    :goto_2
    iget-object p2, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$11;->this$0:Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;

    iget-object p2, p2, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->mViews:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge v0, p2, :cond_5

    .line 1114
    iget-object p2, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$11;->this$0:Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;

    iget-object p2, p2, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->mViews:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$ViewStateListener;

    invoke-interface {p2}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$ViewStateListener;->showBodyUpdate()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1117
    :cond_5
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p1, "lzqW4Firm"

    const-string p2, "body  \u663e\u793a\u66f4\u65b0"

    .line 1119
    invoke-static {p1, p2}, Lcom/powervision/base/utils/L;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1120
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->isShipConnected()Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_6

    .line 1121
    iget-object p1, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$11;->this$0:Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;

    invoke-virtual {p1, p2}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->showRedNotify(I)V

    .line 1122
    :cond_6
    sput-boolean p2, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->showBodyUpdate:Z

    goto :goto_3

    :catchall_0
    move-exception p2

    .line 1117
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2

    .line 1124
    :cond_7
    sput-boolean v0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->showBodyUpdate:Z

    .line 1128
    :goto_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_4

    :cond_8
    const-string v1, "PVW4_MC-0_DL-0_FC-"

    :goto_4
    const-string p1, "0"

    .line 1133
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    .line 1134
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_5

    .line 1136
    :cond_9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "0"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1140
    :goto_5
    invoke-static {}, Lcom/powervision/natives/connect/W4ConnectSdk;->instance()Lcom/powervision/natives/connect/W4ConnectSdk;

    move-result-object p2

    invoke-virtual {p2}, Lcom/powervision/natives/connect/W4ConnectSdk;->getConnectStatus()I

    move-result p2

    const/16 v0, 0x9

    if-eq p2, v0, :cond_a

    invoke-static {}, Lcom/powervision/natives/connect/W4ConnectSdk;->instance()Lcom/powervision/natives/connect/W4ConnectSdk;

    move-result-object p2

    invoke-virtual {p2}, Lcom/powervision/natives/connect/W4ConnectSdk;->getConnectStatus()I

    move-result p2

    const/16 v0, 0xb

    if-ne p2, v0, :cond_b

    .line 1141
    :cond_a
    invoke-static {}, Lcom/powervision/base/base/BaseApplication;->getInstanceApp()Lcom/powervision/base/base/BaseApplication;

    move-result-object p2

    invoke-static {p2}, Lcom/powervision/gcs/utils/SPHelperUtils_FirmWare;->getInstance(Landroid/content/Context;)Lcom/powervision/gcs/utils/SPHelperUtils_FirmWare;

    move-result-object p2

    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectionType;->getCurrentType()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/powervision/gcs/utils/SPHelperUtils_FirmWare;->saveConnectionType(I)V

    .line 1142
    invoke-static {}, Lcom/powervision/base/base/BaseApplication;->getInstanceApp()Lcom/powervision/base/base/BaseApplication;

    move-result-object p2

    invoke-static {p2}, Lcom/powervision/gcs/utils/SPHelperUtils_FirmWare;->getInstance(Landroid/content/Context;)Lcom/powervision/gcs/utils/SPHelperUtils_FirmWare;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/powervision/gcs/utils/SPHelperUtils_FirmWare;->saveBodyMergeVersion(Ljava/lang/String;)V

    .line 1143
    invoke-static {}, Lcom/powervision/base/base/BaseApplication;->getInstanceApp()Lcom/powervision/base/base/BaseApplication;

    move-result-object p2

    invoke-static {p2}, Lcom/powervision/gcs/utils/SPHelperUtils_FirmWare;->getInstance(Landroid/content/Context;)Lcom/powervision/gcs/utils/SPHelperUtils_FirmWare;

    move-result-object p2

    invoke-virtual {p2, v5}, Lcom/powervision/gcs/utils/SPHelperUtils_FirmWare;->saveBodyDl01(Ljava/lang/String;)V

    .line 1144
    invoke-static {}, Lcom/powervision/base/base/BaseApplication;->getInstanceApp()Lcom/powervision/base/base/BaseApplication;

    move-result-object p2

    invoke-static {p2}, Lcom/powervision/gcs/utils/SPHelperUtils_FirmWare;->getInstance(Landroid/content/Context;)Lcom/powervision/gcs/utils/SPHelperUtils_FirmWare;

    move-result-object p2

    invoke-virtual {p2, v4}, Lcom/powervision/gcs/utils/SPHelperUtils_FirmWare;->saveBodyMc(Ljava/lang/String;)V

    .line 1145
    invoke-static {}, Lcom/powervision/base/base/BaseApplication;->getInstanceApp()Lcom/powervision/base/base/BaseApplication;

    move-result-object p2

    invoke-static {p2}, Lcom/powervision/gcs/utils/SPHelperUtils_FirmWare;->getInstance(Landroid/content/Context;)Lcom/powervision/gcs/utils/SPHelperUtils_FirmWare;

    move-result-object p2

    invoke-virtual {p2, v3}, Lcom/powervision/gcs/utils/SPHelperUtils_FirmWare;->saveBodyFc(Ljava/lang/String;)V

    .line 1147
    :cond_b
    iget-object p2, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$11;->this$0:Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;

    invoke-static {p2, p1, v4, v3, v5}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->access$700(Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public needRestart(Z)V
    .locals 0

    .line 1165
    iput-boolean p1, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$11;->needRestart:Z

    return-void
.end method

.method public onDestory()V
    .locals 3

    .line 1152
    iget-object v0, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$11;->this$0:Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->access$602(Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$BodyThread;)Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$BodyThread;

    .line 1153
    iget-boolean v0, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$11;->needRestart:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1154
    iput-boolean v0, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$11;->needRestart:Z

    .line 1155
    iget-object v0, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$11;->this$0:Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;

    new-instance v2, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$BodyThread;

    invoke-direct {v2, v1}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$BodyThread;-><init>(Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$1;)V

    invoke-static {v0, v2}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->access$602(Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$BodyThread;)Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$BodyThread;

    .line 1156
    iget-object v0, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$11;->this$0:Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;

    invoke-static {v0}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->access$600(Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;)Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$BodyThread;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$BodyThread;->setListenr(Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$BodyListener;)V

    .line 1157
    iget-object v0, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$11;->this$0:Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;

    invoke-static {v0}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->access$600(Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;)Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$BodyThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$BodyThread;->start()V

    :cond_0
    return-void
.end method
