.class Lcom/powervision/handheld/ui/activity/TestActivity$1;
.super Ljava/lang/Object;
.source "TestActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/handheld/ui/activity/TestActivity;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/handheld/ui/activity/TestActivity;


# direct methods
.method constructor <init>(Lcom/powervision/handheld/ui/activity/TestActivity;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/powervision/handheld/ui/activity/TestActivity$1;->this$0:Lcom/powervision/handheld/ui/activity/TestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 45
    iget-object p1, p0, Lcom/powervision/handheld/ui/activity/TestActivity$1;->this$0:Lcom/powervision/handheld/ui/activity/TestActivity;

    invoke-static {p1}, Lcom/powervision/handheld/ui/activity/TestActivity;->access$000(Lcom/powervision/handheld/ui/activity/TestActivity;)[B

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/opensource/JniPCMDenoiseNative;->mPCMDeNoise([B)[B

    move-result-object p1

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "========"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "pcm_test_value"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
