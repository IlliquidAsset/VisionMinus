.class public Lcom/powervision/localhttp/CmdModel;
.super Ljava/lang/Object;
.source "CmdModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/localhttp/CmdModel$Builder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CmdModel"


# instance fields
.field protected final CMD_ID:I

.field protected final RETRY_TIMES:I

.field protected final URL:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/powervision/localhttp/CmdModel$Builder;)V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iget v0, p1, Lcom/powervision/localhttp/CmdModel$Builder;->CMD_ID:I

    iput v0, p0, Lcom/powervision/localhttp/CmdModel;->CMD_ID:I

    .line 25
    iget-object v0, p1, Lcom/powervision/localhttp/CmdModel$Builder;->URL:Ljava/lang/String;

    iput-object v0, p0, Lcom/powervision/localhttp/CmdModel;->URL:Ljava/lang/String;

    .line 26
    iget p1, p1, Lcom/powervision/localhttp/CmdModel$Builder;->RETRY_TIMES:I

    iput p1, p0, Lcom/powervision/localhttp/CmdModel;->RETRY_TIMES:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/powervision/localhttp/CmdModel$Builder;Lcom/powervision/localhttp/CmdModel$1;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/powervision/localhttp/CmdModel;-><init>(Lcom/powervision/localhttp/CmdModel$Builder;)V

    return-void
.end method

.method public static workNewMediaRequestFailure(Ljava/lang/String;)V
    .locals 2

    const-string v0, "pv-ap03/getAllAssets"

    .line 1181
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "{\"state\":2}"

    if-nez v0, :cond_4

    const-string v0, "pv-ap03/getAllVideos"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "pv-ap03/getAllImages"

    .line 1182
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "pv-ap03/getAllCollectedAssets"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "pv-ap03/collectAssets"

    .line 1184
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1185
    invoke-static {}, Lcom/powervision/localhttp/AP03MessageDispatchUtils;->get()Lcom/powervision/localhttp/AP03MessageDispatchUtils;

    move-result-object p0

    const/16 v0, 0xf

    invoke-virtual {p0, v0, v1}, Lcom/powervision/localhttp/AP03MessageDispatchUtils;->updateFailedMessage(ILjava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v0, "pv-ap03/cancelCollectedAssets"

    .line 1186
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1187
    invoke-static {}, Lcom/powervision/localhttp/AP03MessageDispatchUtils;->get()Lcom/powervision/localhttp/AP03MessageDispatchUtils;

    move-result-object p0

    const/16 v0, 0x10

    invoke-virtual {p0, v0, v1}, Lcom/powervision/localhttp/AP03MessageDispatchUtils;->updateFailedMessage(ILjava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v0, "pv-ap03/deleteAssets"

    .line 1188
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1189
    invoke-static {}, Lcom/powervision/localhttp/AP03MessageDispatchUtils;->get()Lcom/powervision/localhttp/AP03MessageDispatchUtils;

    move-result-object p0

    const/16 v0, 0x11

    invoke-virtual {p0, v0, v1}, Lcom/powervision/localhttp/AP03MessageDispatchUtils;->updateFailedMessage(ILjava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v0, "pv-ap03/deleteBurstAssets"

    .line 1190
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 1191
    invoke-static {}, Lcom/powervision/localhttp/AP03MessageDispatchUtils;->get()Lcom/powervision/localhttp/AP03MessageDispatchUtils;

    move-result-object p0

    const/16 v0, 0x12

    invoke-virtual {p0, v0, v1}, Lcom/powervision/localhttp/AP03MessageDispatchUtils;->updateFailedMessage(ILjava/lang/String;)V

    goto :goto_1

    .line 1183
    :cond_4
    :goto_0
    invoke-static {}, Lcom/powervision/localhttp/AP03MessageDispatchUtils;->get()Lcom/powervision/localhttp/AP03MessageDispatchUtils;

    move-result-object p0

    const/16 v0, 0xb

    invoke-virtual {p0, v0, v1}, Lcom/powervision/localhttp/AP03MessageDispatchUtils;->updateFailedMessage(ILjava/lang/String;)V

    :cond_5
    :goto_1
    return-void
.end method
