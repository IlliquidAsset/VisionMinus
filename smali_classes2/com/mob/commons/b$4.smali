.class final Lcom/mob/commons/b$4;
.super Lcom/mob/tools/MobHandlerThread;
.source "CommonConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/commons/b;->a(Ljava/util/HashMap;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1107
    iput-object p1, p0, Lcom/mob/commons/b$4;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/mob/tools/MobHandlerThread;-><init>()V

    return-void
.end method

.method private a()V
    .locals 0

    .line 1128
    invoke-super {p0}, Lcom/mob/tools/MobHandlerThread;->run()V

    return-void
.end method

.method static synthetic a(Lcom/mob/commons/b$4;)V
    .locals 0

    .line 1107
    invoke-direct {p0}, Lcom/mob/commons/b$4;->a()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "comm/locks/.dy_lock"

    .line 1112
    invoke-static {v0}, Lcom/mob/commons/e;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    new-instance v1, Lcom/mob/commons/b$4$1;

    invoke-direct {v1, p0}, Lcom/mob/commons/b$4$1;-><init>(Lcom/mob/commons/b$4;)V

    const/4 v2, 0x1

    invoke-static {v0, v2, v1}, Lcom/mob/commons/e;->a(Ljava/io/File;ZLcom/mob/commons/LockAction;)Z

    return-void
.end method
