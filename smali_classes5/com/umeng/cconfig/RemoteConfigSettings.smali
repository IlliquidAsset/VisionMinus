.class public Lcom/umeng/cconfig/RemoteConfigSettings;
.super Ljava/lang/Object;
.source "RemoteConfigSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/cconfig/RemoteConfigSettings$Builder;
    }
.end annotation


# instance fields
.field private final autoUpdateConfig:Z


# direct methods
.method private constructor <init>(Lcom/umeng/cconfig/RemoteConfigSettings$Builder;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    invoke-static {p1}, Lcom/umeng/cconfig/RemoteConfigSettings$Builder;->access$000(Lcom/umeng/cconfig/RemoteConfigSettings$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/umeng/cconfig/RemoteConfigSettings;->autoUpdateConfig:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/cconfig/RemoteConfigSettings$Builder;Lcom/umeng/cconfig/RemoteConfigSettings$1;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/umeng/cconfig/RemoteConfigSettings;-><init>(Lcom/umeng/cconfig/RemoteConfigSettings$Builder;)V

    return-void
.end method


# virtual methods
.method public isAutoUpdateModeEnabled()Z
    .locals 1

    .line 14
    iget-boolean v0, p0, Lcom/umeng/cconfig/RemoteConfigSettings;->autoUpdateConfig:Z

    return v0
.end method
