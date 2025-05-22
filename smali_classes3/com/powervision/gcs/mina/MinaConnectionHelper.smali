.class public Lcom/powervision/gcs/mina/MinaConnectionHelper;
.super Ljava/lang/Object;
.source "MinaConnectionHelper.java"


# static fields
.field private static mInstance:Lcom/powervision/gcs/mina/MinaConnectionHelper;


# instance fields
.field private mConnectionManager:Lcom/powervision/gcs/mina/ConnectionManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/powervision/gcs/mina/MinaConnectionHelper;
    .locals 1

    .line 14
    sget-object v0, Lcom/powervision/gcs/mina/MinaConnectionHelper;->mInstance:Lcom/powervision/gcs/mina/MinaConnectionHelper;

    if-nez v0, :cond_0

    .line 15
    new-instance v0, Lcom/powervision/gcs/mina/MinaConnectionHelper;

    invoke-direct {v0}, Lcom/powervision/gcs/mina/MinaConnectionHelper;-><init>()V

    sput-object v0, Lcom/powervision/gcs/mina/MinaConnectionHelper;->mInstance:Lcom/powervision/gcs/mina/MinaConnectionHelper;

    .line 18
    :cond_0
    sget-object v0, Lcom/powervision/gcs/mina/MinaConnectionHelper;->mInstance:Lcom/powervision/gcs/mina/MinaConnectionHelper;

    return-object v0
.end method


# virtual methods
.method public getConnectionManager()Lcom/powervision/gcs/mina/ConnectionManager;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/powervision/gcs/mina/MinaConnectionHelper;->mConnectionManager:Lcom/powervision/gcs/mina/ConnectionManager;

    return-object v0
.end method

.method public setConnectionManager(Lcom/powervision/gcs/mina/ConnectionManager;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/powervision/gcs/mina/MinaConnectionHelper;->mConnectionManager:Lcom/powervision/gcs/mina/ConnectionManager;

    return-void
.end method
