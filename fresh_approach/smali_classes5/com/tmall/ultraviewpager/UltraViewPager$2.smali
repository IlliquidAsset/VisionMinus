.class Lcom/tmall/ultraviewpager/UltraViewPager$2;
.super Ljava/lang/Object;
.source "UltraViewPager.java"

# interfaces
.implements Lcom/tmall/ultraviewpager/TimerHandler$TimerHandlerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tmall/ultraviewpager/UltraViewPager;
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

    .line 294
    iput-object p1, p0, Lcom/tmall/ultraviewpager/UltraViewPager$2;->this$0:Lcom/tmall/ultraviewpager/UltraViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callBack()V
    .locals 1

    .line 302
    iget-object v0, p0, Lcom/tmall/ultraviewpager/UltraViewPager$2;->this$0:Lcom/tmall/ultraviewpager/UltraViewPager;

    invoke-virtual {v0}, Lcom/tmall/ultraviewpager/UltraViewPager;->scrollNextPage()Z

    return-void
.end method

.method public getNextItem()I
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/tmall/ultraviewpager/UltraViewPager$2;->this$0:Lcom/tmall/ultraviewpager/UltraViewPager;

    invoke-virtual {v0}, Lcom/tmall/ultraviewpager/UltraViewPager;->getNextItem()I

    move-result v0

    return v0
.end method
