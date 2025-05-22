.class final Lcom/mob/tools/utils/UIHandler$1;
.super Ljava/lang/Object;
.source "UIHandler.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/utils/UIHandler;->reset()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 0

    .line 27
    invoke-static {p1}, Lcom/mob/tools/utils/UIHandler;->access$000(Landroid/os/Message;)V

    const/4 p1, 0x0

    return p1
.end method
