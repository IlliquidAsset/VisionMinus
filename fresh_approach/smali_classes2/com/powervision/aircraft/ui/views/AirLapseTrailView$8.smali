.class Lcom/powervision/aircraft/ui/views/AirLapseTrailView$8;
.super Ljava/lang/Object;
.source "AirLapseTrailView.java"

# interfaces
.implements Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment$SuitableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->initViewPager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/aircraft/ui/views/AirLapseTrailView;


# direct methods
.method constructor <init>(Lcom/powervision/aircraft/ui/views/AirLapseTrailView;)V
    .locals 0

    .line 331
    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView$8;->this$0:Lcom/powervision/aircraft/ui/views/AirLapseTrailView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public suitable(II)V
    .locals 4

    .line 334
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView$8;->this$0:Lcom/powervision/aircraft/ui/views/AirLapseTrailView;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->access$1600(Lcom/powervision/aircraft/ui/views/AirLapseTrailView;)Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne p1, v0, :cond_1

    .line 339
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView$8;->this$0:Lcom/powervision/aircraft/ui/views/AirLapseTrailView;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->access$1600(Lcom/powervision/aircraft/ui/views/AirLapseTrailView;)Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    move-result-object p1

    sget v0, Lcom/powervision/aircraft/R$string;->angle_change_format:I

    invoke-virtual {p1, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v1

    iget-object p2, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView$8;->this$0:Lcom/powervision/aircraft/ui/views/AirLapseTrailView;

    invoke-static {p2}, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->access$1600(Lcom/powervision/aircraft/ui/views/AirLapseTrailView;)Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    move-result-object p2

    sget v1, Lcom/powervision/aircraft/R$string;->AP03_AI_95_8:I

    invoke-virtual {p2, v1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, v3

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 340
    iget-object p2, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView$8;->this$0:Lcom/powervision/aircraft/ui/views/AirLapseTrailView;

    invoke-static {p2}, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->access$1700(Lcom/powervision/aircraft/ui/views/AirLapseTrailView;)Landroid/widget/TextView;

    move-result-object p2

    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView$8;->this$0:Lcom/powervision/aircraft/ui/views/AirLapseTrailView;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->access$1600(Lcom/powervision/aircraft/ui/views/AirLapseTrailView;)Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$color;->color_white:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 341
    iget-object p2, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView$8;->this$0:Lcom/powervision/aircraft/ui/views/AirLapseTrailView;

    invoke-static {p2}, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->access$1700(Lcom/powervision/aircraft/ui/views/AirLapseTrailView;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_1
    if-nez p1, :cond_2

    .line 343
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView$8;->this$0:Lcom/powervision/aircraft/ui/views/AirLapseTrailView;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->access$1600(Lcom/powervision/aircraft/ui/views/AirLapseTrailView;)Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    move-result-object p1

    sget v0, Lcom/powervision/aircraft/R$string;->angle_change_format:I

    invoke-virtual {p1, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v1

    iget-object p2, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView$8;->this$0:Lcom/powervision/aircraft/ui/views/AirLapseTrailView;

    invoke-static {p2}, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->access$1600(Lcom/powervision/aircraft/ui/views/AirLapseTrailView;)Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    move-result-object p2

    sget v1, Lcom/powervision/aircraft/R$string;->AP03_AI_95_7:I

    invoke-virtual {p2, v1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, v3

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 344
    iget-object p2, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView$8;->this$0:Lcom/powervision/aircraft/ui/views/AirLapseTrailView;

    invoke-static {p2}, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->access$1700(Lcom/powervision/aircraft/ui/views/AirLapseTrailView;)Landroid/widget/TextView;

    move-result-object p2

    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView$8;->this$0:Lcom/powervision/aircraft/ui/views/AirLapseTrailView;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->access$1600(Lcom/powervision/aircraft/ui/views/AirLapseTrailView;)Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$color;->color_67E194:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_2
    if-ne p1, v3, :cond_3

    .line 346
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView$8;->this$0:Lcom/powervision/aircraft/ui/views/AirLapseTrailView;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->access$1600(Lcom/powervision/aircraft/ui/views/AirLapseTrailView;)Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    move-result-object p1

    sget v0, Lcom/powervision/aircraft/R$string;->angle_change_format:I

    invoke-virtual {p1, v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v1

    iget-object p2, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView$8;->this$0:Lcom/powervision/aircraft/ui/views/AirLapseTrailView;

    invoke-static {p2}, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->access$1600(Lcom/powervision/aircraft/ui/views/AirLapseTrailView;)Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    move-result-object p2

    sget v1, Lcom/powervision/aircraft/R$string;->AP03_AI_95_9:I

    invoke-virtual {p2, v1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, v3

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 347
    iget-object p2, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView$8;->this$0:Lcom/powervision/aircraft/ui/views/AirLapseTrailView;

    invoke-static {p2}, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->access$1700(Lcom/powervision/aircraft/ui/views/AirLapseTrailView;)Landroid/widget/TextView;

    move-result-object p2

    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView$8;->this$0:Lcom/powervision/aircraft/ui/views/AirLapseTrailView;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->access$1600(Lcom/powervision/aircraft/ui/views/AirLapseTrailView;)Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$color;->color_white:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_3
    const-string p1, ""

    .line 349
    :goto_0
    iget-object p2, p0, Lcom/powervision/aircraft/ui/views/AirLapseTrailView$8;->this$0:Lcom/powervision/aircraft/ui/views/AirLapseTrailView;

    invoke-static {p2}, Lcom/powervision/aircraft/ui/views/AirLapseTrailView;->access$1700(Lcom/powervision/aircraft/ui/views/AirLapseTrailView;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
