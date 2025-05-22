.class public Lcom/powervision/gcs/mina/ConnectionConfig;
.super Ljava/lang/Object;
.source "ConnectionConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/gcs/mina/ConnectionConfig$Builder;
    }
.end annotation


# instance fields
.field private connectionTimeout:J

.field private context:Landroid/content/Context;

.field private ip:Ljava/lang/String;

.field private port:I

.field private readBufferSize:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/powervision/gcs/mina/ConnectionConfig;Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    .line 10
    iput-object p1, p0, Lcom/powervision/gcs/mina/ConnectionConfig;->context:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic access$102(Lcom/powervision/gcs/mina/ConnectionConfig;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 10
    iput-object p1, p0, Lcom/powervision/gcs/mina/ConnectionConfig;->ip:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/powervision/gcs/mina/ConnectionConfig;I)I
    .locals 0

    .line 10
    iput p1, p0, Lcom/powervision/gcs/mina/ConnectionConfig;->port:I

    return p1
.end method

.method static synthetic access$302(Lcom/powervision/gcs/mina/ConnectionConfig;I)I
    .locals 0

    .line 10
    iput p1, p0, Lcom/powervision/gcs/mina/ConnectionConfig;->readBufferSize:I

    return p1
.end method

.method static synthetic access$402(Lcom/powervision/gcs/mina/ConnectionConfig;J)J
    .locals 0

    .line 10
    iput-wide p1, p0, Lcom/powervision/gcs/mina/ConnectionConfig;->connectionTimeout:J

    return-wide p1
.end method


# virtual methods
.method public getConnectionTimeout()J
    .locals 2

    .line 35
    iget-wide v0, p0, Lcom/powervision/gcs/mina/ConnectionConfig;->connectionTimeout:J

    return-wide v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/powervision/gcs/mina/ConnectionConfig;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getIp()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/powervision/gcs/mina/ConnectionConfig;->ip:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .line 27
    iget v0, p0, Lcom/powervision/gcs/mina/ConnectionConfig;->port:I

    return v0
.end method

.method public getReadBufferSize()I
    .locals 1

    .line 31
    iget v0, p0, Lcom/powervision/gcs/mina/ConnectionConfig;->readBufferSize:I

    return v0
.end method
