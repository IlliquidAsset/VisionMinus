.class public Lcom/umeng/cconfig/RemoteConfigSettings$Builder;
.super Ljava/lang/Object;
.source "RemoteConfigSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/cconfig/RemoteConfigSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private autoUpdateConfig:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/umeng/cconfig/RemoteConfigSettings$Builder;->autoUpdateConfig:Z

    return-void
.end method

.method static synthetic access$000(Lcom/umeng/cconfig/RemoteConfigSettings$Builder;)Z
    .locals 0

    .line 17
    iget-boolean p0, p0, Lcom/umeng/cconfig/RemoteConfigSettings$Builder;->autoUpdateConfig:Z

    return p0
.end method


# virtual methods
.method public build()Lcom/umeng/cconfig/RemoteConfigSettings;
    .locals 2

    .line 29
    new-instance v0, Lcom/umeng/cconfig/RemoteConfigSettings;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/umeng/cconfig/RemoteConfigSettings;-><init>(Lcom/umeng/cconfig/RemoteConfigSettings$Builder;Lcom/umeng/cconfig/RemoteConfigSettings$1;)V

    return-object v0
.end method

.method public setAutoUpdateModeEnabled(Z)Lcom/umeng/cconfig/RemoteConfigSettings$Builder;
    .locals 0

    .line 24
    iput-boolean p1, p0, Lcom/umeng/cconfig/RemoteConfigSettings$Builder;->autoUpdateConfig:Z

    return-object p0
.end method
