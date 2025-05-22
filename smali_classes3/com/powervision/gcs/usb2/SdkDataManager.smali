.class public Lcom/powervision/gcs/usb2/SdkDataManager;
.super Ljava/lang/Object;
.source "SdkDataManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/gcs/usb2/SdkDataManager$MsgBody;
    }
.end annotation


# static fields
.field private static sdkDataManager:Lcom/powervision/gcs/usb2/SdkDataManager;


# instance fields
.field channels:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/powervision/gcs/usb2/SdkDataManager$MsgBody;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/usb2/SdkDataManager;->channels:Ljava/util/Map;

    return-void
.end method

.method public static get()Lcom/powervision/gcs/usb2/SdkDataManager;
    .locals 1

    .line 25
    sget-object v0, Lcom/powervision/gcs/usb2/SdkDataManager;->sdkDataManager:Lcom/powervision/gcs/usb2/SdkDataManager;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lcom/powervision/gcs/usb2/SdkDataManager;

    invoke-direct {v0}, Lcom/powervision/gcs/usb2/SdkDataManager;-><init>()V

    sput-object v0, Lcom/powervision/gcs/usb2/SdkDataManager;->sdkDataManager:Lcom/powervision/gcs/usb2/SdkDataManager;

    .line 28
    :cond_0
    sget-object v0, Lcom/powervision/gcs/usb2/SdkDataManager;->sdkDataManager:Lcom/powervision/gcs/usb2/SdkDataManager;

    return-object v0
.end method


# virtual methods
.method public addApacket(I[B)V
    .locals 2

    .line 33
    new-instance v0, Lcom/powervision/gcs/usb2/Msg;

    const/4 v1, -0x1

    invoke-direct {v0, p1, p2, v1}, Lcom/powervision/gcs/usb2/Msg;-><init>(I[BI)V

    .line 34
    iget-object p2, p0, Lcom/powervision/gcs/usb2/SdkDataManager;->channels:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 36
    iget-object p2, p0, Lcom/powervision/gcs/usb2/SdkDataManager;->channels:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/powervision/gcs/usb2/SdkDataManager$MsgBody;

    .line 37
    invoke-virtual {p1, v0}, Lcom/powervision/gcs/usb2/SdkDataManager$MsgBody;->addMsg(Lcom/powervision/gcs/usb2/Msg;)V

    goto :goto_0

    .line 39
    :cond_0
    new-instance p2, Lcom/powervision/gcs/usb2/SdkDataManager$MsgBody;

    invoke-direct {p2, p0, v0}, Lcom/powervision/gcs/usb2/SdkDataManager$MsgBody;-><init>(Lcom/powervision/gcs/usb2/SdkDataManager;Lcom/powervision/gcs/usb2/Msg;)V

    .line 40
    iget-object v0, p0, Lcom/powervision/gcs/usb2/SdkDataManager;->channels:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public addApacket(Lcom/powervision/gcs/usb2/Msg;)V
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/powervision/gcs/usb2/SdkDataManager;->channels:Ljava/util/Map;

    iget v1, p1, Lcom/powervision/gcs/usb2/Msg;->channel:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/powervision/gcs/usb2/SdkDataManager;->channels:Ljava/util/Map;

    iget v1, p1, Lcom/powervision/gcs/usb2/Msg;->channel:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/gcs/usb2/SdkDataManager$MsgBody;

    .line 49
    invoke-virtual {v0, p1}, Lcom/powervision/gcs/usb2/SdkDataManager$MsgBody;->addMsg(Lcom/powervision/gcs/usb2/Msg;)V

    goto :goto_0

    .line 51
    :cond_0
    new-instance v0, Lcom/powervision/gcs/usb2/SdkDataManager$MsgBody;

    invoke-direct {v0, p0, p1}, Lcom/powervision/gcs/usb2/SdkDataManager$MsgBody;-><init>(Lcom/powervision/gcs/usb2/SdkDataManager;Lcom/powervision/gcs/usb2/Msg;)V

    .line 52
    iget-object v1, p0, Lcom/powervision/gcs/usb2/SdkDataManager;->channels:Ljava/util/Map;

    iget p1, p1, Lcom/powervision/gcs/usb2/Msg;->channel:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method
