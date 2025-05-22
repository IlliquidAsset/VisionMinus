.class public Lcom/powervision/gcs/mina/ConnectionConfig$Builder;
.super Ljava/lang/Object;
.source "ConnectionConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/mina/ConnectionConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private connectionTimeout:J

.field private context:Landroid/content/Context;

.field private ip:Ljava/lang/String;

.field private port:I

.field private readBufferSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    sget-object v0, Lcom/powervision/base/config/GlobalConfig;->PV_SONAR_TCP_SERVER_IP:Ljava/lang/String;

    iput-object v0, p0, Lcom/powervision/gcs/mina/ConnectionConfig$Builder;->ip:Ljava/lang/String;

    const/16 v0, 0x4e22

    .line 41
    iput v0, p0, Lcom/powervision/gcs/mina/ConnectionConfig$Builder;->port:I

    const/16 v0, 0x400

    .line 42
    iput v0, p0, Lcom/powervision/gcs/mina/ConnectionConfig$Builder;->readBufferSize:I

    const-wide/16 v0, 0x2710

    .line 43
    iput-wide v0, p0, Lcom/powervision/gcs/mina/ConnectionConfig$Builder;->connectionTimeout:J

    .line 46
    iput-object p1, p0, Lcom/powervision/gcs/mina/ConnectionConfig$Builder;->context:Landroid/content/Context;

    return-void
.end method

.method private applyConfig(Lcom/powervision/gcs/mina/ConnectionConfig;)V
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/powervision/gcs/mina/ConnectionConfig$Builder;->context:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/powervision/gcs/mina/ConnectionConfig;->access$002(Lcom/powervision/gcs/mina/ConnectionConfig;Landroid/content/Context;)Landroid/content/Context;

    .line 72
    iget-object v0, p0, Lcom/powervision/gcs/mina/ConnectionConfig$Builder;->ip:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/powervision/gcs/mina/ConnectionConfig;->access$102(Lcom/powervision/gcs/mina/ConnectionConfig;Ljava/lang/String;)Ljava/lang/String;

    .line 73
    iget v0, p0, Lcom/powervision/gcs/mina/ConnectionConfig$Builder;->port:I

    invoke-static {p1, v0}, Lcom/powervision/gcs/mina/ConnectionConfig;->access$202(Lcom/powervision/gcs/mina/ConnectionConfig;I)I

    .line 74
    iget v0, p0, Lcom/powervision/gcs/mina/ConnectionConfig$Builder;->readBufferSize:I

    invoke-static {p1, v0}, Lcom/powervision/gcs/mina/ConnectionConfig;->access$302(Lcom/powervision/gcs/mina/ConnectionConfig;I)I

    .line 75
    iget-wide v0, p0, Lcom/powervision/gcs/mina/ConnectionConfig$Builder;->connectionTimeout:J

    invoke-static {p1, v0, v1}, Lcom/powervision/gcs/mina/ConnectionConfig;->access$402(Lcom/powervision/gcs/mina/ConnectionConfig;J)J

    return-void
.end method


# virtual methods
.method public builder()Lcom/powervision/gcs/mina/ConnectionConfig;
    .locals 1

    .line 79
    new-instance v0, Lcom/powervision/gcs/mina/ConnectionConfig;

    invoke-direct {v0}, Lcom/powervision/gcs/mina/ConnectionConfig;-><init>()V

    .line 80
    invoke-direct {p0, v0}, Lcom/powervision/gcs/mina/ConnectionConfig$Builder;->applyConfig(Lcom/powervision/gcs/mina/ConnectionConfig;)V

    return-object v0
.end method

.method public setConnectionTimeout(J)Lcom/powervision/gcs/mina/ConnectionConfig$Builder;
    .locals 0

    .line 65
    iput-wide p1, p0, Lcom/powervision/gcs/mina/ConnectionConfig$Builder;->connectionTimeout:J

    return-object p0
.end method

.method public setIp(Ljava/lang/String;)Lcom/powervision/gcs/mina/ConnectionConfig$Builder;
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/powervision/gcs/mina/ConnectionConfig$Builder;->ip:Ljava/lang/String;

    return-object p0
.end method

.method public setPort(I)Lcom/powervision/gcs/mina/ConnectionConfig$Builder;
    .locals 0

    .line 55
    iput p1, p0, Lcom/powervision/gcs/mina/ConnectionConfig$Builder;->port:I

    return-object p0
.end method

.method public setReadBufferSize(I)Lcom/powervision/gcs/mina/ConnectionConfig$Builder;
    .locals 0

    .line 60
    iput p1, p0, Lcom/powervision/gcs/mina/ConnectionConfig$Builder;->readBufferSize:I

    return-object p0
.end method
