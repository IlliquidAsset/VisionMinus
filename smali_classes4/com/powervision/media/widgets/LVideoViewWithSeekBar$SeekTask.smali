.class Lcom/powervision/media/widgets/LVideoViewWithSeekBar$SeekTask;
.super Ljava/util/TimerTask;
.source "LVideoViewWithSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/media/widgets/LVideoViewWithSeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SeekTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/media/widgets/LVideoViewWithSeekBar;


# direct methods
.method private constructor <init>(Lcom/powervision/media/widgets/LVideoViewWithSeekBar;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/powervision/media/widgets/LVideoViewWithSeekBar$SeekTask;->this$0:Lcom/powervision/media/widgets/LVideoViewWithSeekBar;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/powervision/media/widgets/LVideoViewWithSeekBar;Lcom/powervision/media/widgets/LVideoViewWithSeekBar$1;)V
    .locals 0

    .line 194
    invoke-direct {p0, p1}, Lcom/powervision/media/widgets/LVideoViewWithSeekBar$SeekTask;-><init>(Lcom/powervision/media/widgets/LVideoViewWithSeekBar;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 197
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 198
    iget-object v0, p0, Lcom/powervision/media/widgets/LVideoViewWithSeekBar$SeekTask;->this$0:Lcom/powervision/media/widgets/LVideoViewWithSeekBar;

    invoke-static {v0}, Lcom/powervision/media/widgets/LVideoViewWithSeekBar;->access$100(Lcom/powervision/media/widgets/LVideoViewWithSeekBar;)Landroidx/appcompat/widget/AppCompatSeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/media/widgets/LVideoViewWithSeekBar$SeekTask;->this$0:Lcom/powervision/media/widgets/LVideoViewWithSeekBar;

    invoke-static {v1}, Lcom/powervision/media/widgets/LVideoViewWithSeekBar;->access$000(Lcom/powervision/media/widgets/LVideoViewWithSeekBar;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/widget/AppCompatSeekBar;->setProgress(IZ)V

    goto :goto_0

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/powervision/media/widgets/LVideoViewWithSeekBar$SeekTask;->this$0:Lcom/powervision/media/widgets/LVideoViewWithSeekBar;

    invoke-static {v0}, Lcom/powervision/media/widgets/LVideoViewWithSeekBar;->access$100(Lcom/powervision/media/widgets/LVideoViewWithSeekBar;)Landroidx/appcompat/widget/AppCompatSeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/media/widgets/LVideoViewWithSeekBar$SeekTask;->this$0:Lcom/powervision/media/widgets/LVideoViewWithSeekBar;

    invoke-static {v1}, Lcom/powervision/media/widgets/LVideoViewWithSeekBar;->access$000(Lcom/powervision/media/widgets/LVideoViewWithSeekBar;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatSeekBar;->setProgress(I)V

    :goto_0
    return-void
.end method
