.class Lcom/powervision/base/utils/AudioUtil$1;
.super Ljava/lang/Object;
.source "AudioUtil.java"

# interfaces
.implements Landroid/media/SoundPool$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/base/utils/AudioUtil;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/base/utils/AudioUtil;


# direct methods
.method constructor <init>(Lcom/powervision/base/utils/AudioUtil;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/powervision/base/utils/AudioUtil$1;->this$0:Lcom/powervision/base/utils/AudioUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadComplete(Landroid/media/SoundPool;II)V
    .locals 0

    .line 103
    iget-object p1, p0, Lcom/powervision/base/utils/AudioUtil$1;->this$0:Lcom/powervision/base/utils/AudioUtil;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/powervision/base/utils/AudioUtil;->access$002(Lcom/powervision/base/utils/AudioUtil;Z)Z

    return-void
.end method
