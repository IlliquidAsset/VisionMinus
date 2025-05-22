.class Lcom/mob/tools/FakeActivity$2;
.super Ljava/lang/Object;
.source "FakeActivity.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/FakeActivity;->runOnUIThread(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mob/tools/FakeActivity;

.field final synthetic val$r:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/mob/tools/FakeActivity;Ljava/lang/Runnable;)V
    .locals 0

    .line 265
    iput-object p1, p0, Lcom/mob/tools/FakeActivity$2;->this$0:Lcom/mob/tools/FakeActivity;

    iput-object p2, p0, Lcom/mob/tools/FakeActivity$2;->val$r:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 0

    .line 267
    iget-object p1, p0, Lcom/mob/tools/FakeActivity$2;->val$r:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    const/4 p1, 0x0

    return p1
.end method
