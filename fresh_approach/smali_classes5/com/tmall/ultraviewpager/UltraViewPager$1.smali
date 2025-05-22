.class Lcom/tmall/ultraviewpager/UltraViewPager$1;
.super Ljava/lang/Object;
.source "UltraViewPager.java"

# interfaces
.implements Lcom/tmall/ultraviewpager/UltraViewPagerIndicator$UltraViewPagerIndicatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tmall/ultraviewpager/UltraViewPager;->initIndicator()Lcom/tmall/ultraviewpager/IUltraIndicatorBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tmall/ultraviewpager/UltraViewPager;


# direct methods
.method constructor <init>(Lcom/tmall/ultraviewpager/UltraViewPager;)V
    .locals 0

    .line 236
    iput-object p1, p0, Lcom/tmall/ultraviewpager/UltraViewPager$1;->this$0:Lcom/tmall/ultraviewpager/UltraViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()V
    .locals 4

    .line 239
    iget-object v0, p0, Lcom/tmall/ultraviewpager/UltraViewPager$1;->this$0:Lcom/tmall/ultraviewpager/UltraViewPager;

    invoke-static {v0}, Lcom/tmall/ultraviewpager/UltraViewPager;->access$000(Lcom/tmall/ultraviewpager/UltraViewPager;)Lcom/tmall/ultraviewpager/UltraViewPagerIndicator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tmall/ultraviewpager/UltraViewPager;->removeView(Landroid/view/View;)V

    .line 240
    iget-object v0, p0, Lcom/tmall/ultraviewpager/UltraViewPager$1;->this$0:Lcom/tmall/ultraviewpager/UltraViewPager;

    invoke-static {v0}, Lcom/tmall/ultraviewpager/UltraViewPager;->access$000(Lcom/tmall/ultraviewpager/UltraViewPager;)Lcom/tmall/ultraviewpager/UltraViewPagerIndicator;

    move-result-object v1

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Lcom/tmall/ultraviewpager/UltraViewPager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
