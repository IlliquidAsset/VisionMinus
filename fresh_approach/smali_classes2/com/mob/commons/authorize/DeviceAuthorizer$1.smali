.class final Lcom/mob/commons/authorize/DeviceAuthorizer$1;
.super Ljava/lang/Thread;
.source "DeviceAuthorizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/commons/authorize/DeviceAuthorizer;->authorize(Lcom/mob/commons/MobProduct;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/commons/MobProduct;


# direct methods
.method constructor <init>(Lcom/mob/commons/MobProduct;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/mob/commons/authorize/DeviceAuthorizer$1;->a:Lcom/mob/commons/MobProduct;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 73
    :try_start_0
    iget-object v0, p0, Lcom/mob/commons/authorize/DeviceAuthorizer$1;->a:Lcom/mob/commons/MobProduct;

    sget-object v1, Lcom/mob/commons/authorize/DeviceAuthorizer;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mob/commons/authorize/DeviceAuthorizer;->a(Lcom/mob/commons/MobProduct;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 74
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 75
    sput-object v0, Lcom/mob/commons/authorize/DeviceAuthorizer;->a:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 78
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method
