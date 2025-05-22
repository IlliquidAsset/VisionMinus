.class public final synthetic Lcom/powervision/media/ui/fragment/-$$Lambda$VideoListFragment$GridVideoGroupAdapter$hTUj5qZCmb-nSMZWwqOoBFMjI_A;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic f$0:Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/powervision/media/ui/fragment/-$$Lambda$VideoListFragment$GridVideoGroupAdapter$hTUj5qZCmb-nSMZWwqOoBFMjI_A;->f$0:Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter;

    iput-object p2, p0, Lcom/powervision/media/ui/fragment/-$$Lambda$VideoListFragment$GridVideoGroupAdapter$hTUj5qZCmb-nSMZWwqOoBFMjI_A;->f$1:Ljava/lang/String;

    iput p3, p0, Lcom/powervision/media/ui/fragment/-$$Lambda$VideoListFragment$GridVideoGroupAdapter$hTUj5qZCmb-nSMZWwqOoBFMjI_A;->f$2:I

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v0, p0, Lcom/powervision/media/ui/fragment/-$$Lambda$VideoListFragment$GridVideoGroupAdapter$hTUj5qZCmb-nSMZWwqOoBFMjI_A;->f$0:Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter;

    iget-object v1, p0, Lcom/powervision/media/ui/fragment/-$$Lambda$VideoListFragment$GridVideoGroupAdapter$hTUj5qZCmb-nSMZWwqOoBFMjI_A;->f$1:Ljava/lang/String;

    iget v2, p0, Lcom/powervision/media/ui/fragment/-$$Lambda$VideoListFragment$GridVideoGroupAdapter$hTUj5qZCmb-nSMZWwqOoBFMjI_A;->f$2:I

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter;->lambda$getGroupedView$2$VideoListFragment$GridVideoGroupAdapter(Ljava/lang/String;ILandroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
