.class Lcom/powervision/base/utils/SoundPoolUtils$1;
.super Ljava/lang/Object;
.source "SoundPoolUtils.java"

# interfaces
.implements Landroid/media/SoundPool$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/base/utils/SoundPoolUtils;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/base/utils/SoundPoolUtils;


# direct methods
.method constructor <init>(Lcom/powervision/base/utils/SoundPoolUtils;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/powervision/base/utils/SoundPoolUtils$1;->this$0:Lcom/powervision/base/utils/SoundPoolUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadComplete(Landroid/media/SoundPool;II)V
    .locals 0

    .line 92
    iget-object p1, p0, Lcom/powervision/base/utils/SoundPoolUtils$1;->this$0:Lcom/powervision/base/utils/SoundPoolUtils;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/powervision/base/utils/SoundPoolUtils;->access$002(Lcom/powervision/base/utils/SoundPoolUtils;Z)Z

    return-void
.end method
