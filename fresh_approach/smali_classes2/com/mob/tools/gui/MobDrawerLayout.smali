.class public Lcom/mob/tools/gui/MobDrawerLayout;
.super Landroid/view/ViewGroup;
.source "MobDrawerLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mob/tools/gui/MobDrawerLayout$OnDrawerStateChangeListener;,
        Lcom/mob/tools/gui/MobDrawerLayout$DrawerType;
    }
.end annotation


# static fields
.field private static final SNAP_VELOCITY:I = 0x1f4

.field private static final TOUCH_STATE_REST:I = 0x0

.field private static final TOUCH_STATE_SCROLLING:I = 0x1


# instance fields
.field private bodyContainer:Landroid/widget/FrameLayout;

.field private drawerContainer:Landroid/widget/FrameLayout;

.field private drawerWidth:D

.field private lastMotionX:F

.field private lastMotionY:F

.field private listener:Lcom/mob/tools/gui/MobDrawerLayout$OnDrawerStateChangeListener;

.field private lockScroll:Z

.field private maximumVelocity:I

.field private opened:Z

.field private paint:Landroid/graphics/Paint;

.field private scroller:Landroid/widget/Scroller;

.field private touchSlop:I

.field private touchState:I

.field private type:Lcom/mob/tools/gui/MobDrawerLayout$DrawerType;

.field private velocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 58
    invoke-direct {p0, p1}, Lcom/mob/tools/gui/MobDrawerLayout;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    invoke-direct {p0, p1}, Lcom/mob/tools/gui/MobDrawerLayout;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 67
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 68
    invoke-direct {p0, p1}, Lcom/mob/tools/gui/MobDrawerLayout;->init(Landroid/content/Context;)V

    return-void
.end method

.method private computeDrag(I)V
    .locals 4

    const/16 v0, 0x1f4

    if-lt p1, v0, :cond_0

    .line 661
    sget-object p1, Lcom/mob/tools/gui/MobDrawerLayout$2;->$SwitchMap$com$mob$tools$gui$MobDrawerLayout$DrawerType:[I

    iget-object v0, p0, Lcom/mob/tools/gui/MobDrawerLayout;->type:Lcom/mob/tools/gui/MobDrawerLayout$DrawerType;

    invoke-virtual {v0}, Lcom/mob/tools/gui/MobDrawerLayout$DrawerType;->ordinal()I

    move-result v0

    aget p1, p1, v0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    .line 670
    :pswitch_0
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobDrawerLayout;->close()V

    goto :goto_1

    .line 665
    :pswitch_1
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobDrawerLayout;->open()V

    goto :goto_1

    :cond_0
    const/16 v0, -0x1f4

    if-gt p1, v0, :cond_1

    .line 674
    sget-object p1, Lcom/mob/tools/gui/MobDrawerLayout$2;->$SwitchMap$com$mob$tools$gui$MobDrawerLayout$DrawerType:[I

    iget-object v0, p0, Lcom/mob/tools/gui/MobDrawerLayout;->type:Lcom/mob/tools/gui/MobDrawerLayout$DrawerType;

    invoke-virtual {v0}, Lcom/mob/tools/gui/MobDrawerLayout$DrawerType;->ordinal()I

    move-result v0

    aget p1, p1, v0

    packed-switch p1, :pswitch_data_1

    goto :goto_1

    .line 683
    :pswitch_2
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobDrawerLayout;->open()V

    goto :goto_1

    .line 678
    :pswitch_3
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobDrawerLayout;->close()V

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 688
    sget-object v0, Lcom/mob/tools/gui/MobDrawerLayout$2;->$SwitchMap$com$mob$tools$gui$MobDrawerLayout$DrawerType:[I

    iget-object v1, p0, Lcom/mob/tools/gui/MobDrawerLayout;->type:Lcom/mob/tools/gui/MobDrawerLayout$DrawerType;

    invoke-virtual {v1}, Lcom/mob/tools/gui/MobDrawerLayout$DrawerType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2

    goto :goto_0

    .line 701
    :pswitch_4
    iget-object p1, p0, Lcom/mob/tools/gui/MobDrawerLayout;->bodyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLeft()I

    move-result p1

    neg-int p1, p1

    goto :goto_0

    .line 694
    :pswitch_5
    iget-object p1, p0, Lcom/mob/tools/gui/MobDrawerLayout;->bodyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLeft()I

    move-result p1

    goto :goto_0

    .line 698
    :pswitch_6
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobDrawerLayout;->getWidth()I

    move-result p1

    iget-object v0, p0, Lcom/mob/tools/gui/MobDrawerLayout;->drawerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v0

    sub-int/2addr p1, v0

    goto :goto_0

    .line 691
    :pswitch_7
    iget-object p1, p0, Lcom/mob/tools/gui/MobDrawerLayout;->drawerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getRight()I

    move-result p1

    .line 704
    :goto_0
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobDrawerLayout;->getWidth()I

    move-result v0

    int-to-double v0, v0

    iget-wide v2, p0, Lcom/mob/tools/gui/MobDrawerLayout;->drawerWidth:D

    mul-double v0, v0, v2

    double-to-int v0, v0

    div-int/lit8 v0, v0, 0x2

    if-lt p1, v0, :cond_2

    .line 705
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobDrawerLayout;->open()V

    goto :goto_1

    .line 707
    :cond_2
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobDrawerLayout;->close()V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_7
        :pswitch_4
        :pswitch_6
    .end packed-switch
.end method

.method private dragToLeft(I)V
    .locals 7

    .line 582
    sget-object v0, Lcom/mob/tools/gui/MobDrawerLayout$2;->$SwitchMap$com$mob$tools$gui$MobDrawerLayout$DrawerType:[I

    iget-object v1, p0, Lcom/mob/tools/gui/MobDrawerLayout;->type:Lcom/mob/tools/gui/MobDrawerLayout$DrawerType;

    invoke-virtual {v1}, Lcom/mob/tools/gui/MobDrawerLayout$DrawerType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    .line 643
    :pswitch_0
    iget-object v0, p0, Lcom/mob/tools/gui/MobDrawerLayout;->drawerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getRight()I

    move-result v0

    .line 644
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobDrawerLayout;->getWidth()I

    move-result v2

    if-le v0, v2, :cond_6

    sub-int/2addr v0, p1

    if-ge v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    .line 650
    :goto_0
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobDrawerLayout;->getWidth()I

    move-result p1

    int-to-double v3, p1

    iget-wide v5, p0, Lcom/mob/tools/gui/MobDrawerLayout;->drawerWidth:D

    mul-double v3, v3, v5

    double-to-int p1, v3

    sub-int p1, v2, p1

    .line 651
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobDrawerLayout;->getWidth()I

    move-result v0

    sub-int v0, p1, v0

    .line 652
    iget-object v3, p0, Lcom/mob/tools/gui/MobDrawerLayout;->drawerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/mob/tools/gui/MobDrawerLayout;->getHeight()I

    move-result v4

    invoke-virtual {v3, p1, v1, v2, v4}, Landroid/widget/FrameLayout;->layout(IIII)V

    .line 653
    iget-object v2, p0, Lcom/mob/tools/gui/MobDrawerLayout;->bodyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/mob/tools/gui/MobDrawerLayout;->getHeight()I

    move-result v3

    invoke-virtual {v2, v0, v1, p1, v3}, Landroid/widget/FrameLayout;->layout(IIII)V

    goto/16 :goto_3

    .line 631
    :pswitch_1
    iget-object v0, p0, Lcom/mob/tools/gui/MobDrawerLayout;->bodyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v0

    .line 632
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobDrawerLayout;->getWidth()I

    move-result v2

    neg-int v2, v2

    int-to-double v2, v2

    iget-wide v4, p0, Lcom/mob/tools/gui/MobDrawerLayout;->drawerWidth:D

    mul-double v2, v2, v4

    double-to-int v2, v2

    if-le v0, v2, :cond_6

    sub-int/2addr v0, p1

    if-ge v0, v2, :cond_1

    goto :goto_1

    :cond_1
    move v2, v0

    .line 638
    :goto_1
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobDrawerLayout;->getWidth()I

    move-result p1

    add-int/2addr p1, v2

    .line 639
    iget-object v0, p0, Lcom/mob/tools/gui/MobDrawerLayout;->bodyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/mob/tools/gui/MobDrawerLayout;->getHeight()I

    move-result v3

    invoke-virtual {v0, v2, v1, p1, v3}, Landroid/widget/FrameLayout;->layout(IIII)V

    goto/16 :goto_3

    .line 606
    :pswitch_2
    iget-object v0, p0, Lcom/mob/tools/gui/MobDrawerLayout;->drawerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getRight()I

    move-result v0

    if-lez v0, :cond_6

    sub-int/2addr v0, p1

    if-gez v0, :cond_2

    const/4 v0, 0x0

    .line 612
    :cond_2
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobDrawerLayout;->getWidth()I

    move-result p1

    int-to-double v2, p1

    iget-wide v4, p0, Lcom/mob/tools/gui/MobDrawerLayout;->drawerWidth:D

    mul-double v2, v2, v4

    double-to-int p1, v2

    sub-int p1, v0, p1

    .line 613
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobDrawerLayout;->getWidth()I

    move-result v2

    add-int/2addr v2, v0

    .line 614
    iget-object v3, p0, Lcom/mob/tools/gui/MobDrawerLayout;->drawerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/mob/tools/gui/MobDrawerLayout;->getHeight()I

    move-result v4

    invoke-virtual {v3, p1, v1, v0, v4}, Landroid/widget/FrameLayout;->layout(IIII)V

    .line 615
    iget-object p1, p0, Lcom/mob/tools/gui/MobDrawerLayout;->bodyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/mob/tools/gui/MobDrawerLayout;->getHeight()I

    move-result v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/widget/FrameLayout;->layout(IIII)V

    goto :goto_3

    .line 595
    :pswitch_3
    iget-object v0, p0, Lcom/mob/tools/gui/MobDrawerLayout;->bodyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v0

    if-lez v0, :cond_6

    sub-int/2addr v0, p1

    if-gez v0, :cond_3

    const/4 v0, 0x0

    .line 601
    :cond_3
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobDrawerLayout;->getWidth()I

    move-result p1

    add-int/2addr p1, v0

    .line 602
    iget-object v2, p0, Lcom/mob/tools/gui/MobDrawerLayout;->bodyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/mob/tools/gui/MobDrawerLayout;->getHeight()I

    move-result v3

    invoke-virtual {v2, v0, v1, p1, v3}, Landroid/widget/FrameLayout;->layout(IIII)V

    goto :goto_3

    .line 619
    :pswitch_4
    iget-object v0, p0, Lcom/mob/tools/gui/MobDrawerLayout;->drawerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getRight()I

    move-result v0

    .line 620
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobDrawerLayout;->getWidth()I

    move-result v2

    if-le v0, v2, :cond_6

    sub-int/2addr v0, p1

    if-ge v0, v2, :cond_4

    goto :goto_2

    :cond_4
    move v2, v0

    .line 626
    :goto_2
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobDrawerLayout;->getWidth()I

    move-result p1

    int-to-double v3, p1

    iget-wide v5, p0, Lcom/mob/tools/gui/MobDrawerLayout;->drawerWidth:D

    mul-double v3, v3, v5

    double-to-int p1, v3

    sub-int p1, v2, p1

    .line 627
    iget-object v0, p0, Lcom/mob/tools/gui/MobDrawerLayout;->drawerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/mob/tools/gui/MobDrawerLayout;->getHeight()I

    move-result v3

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/widget/FrameLayout;->layout(IIII)V

    goto :goto_3

    .line 584
    :pswitch_5
    iget-object v0, p0, Lcom/mob/tools/gui/MobDrawerLayout;->drawerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getRight()I

    move-result v0

    if-lez v0, :cond_6

    sub-int/2addr v0, p1

    if-gez v0, :cond_5

    const/4 v0, 0x0

    .line 590
    :cond_5
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobDrawerLayout;->getWidth()I

    move-result p1

    int-to-double v2, p1

    iget-wide v4, p0, Lcom/mob/tools/gui/MobDrawerLayout;->drawerWidth:D

    mul-double v2, v2, v4

    double-to-int p1, v2

    sub-int p1, v0, p1

    .line 591
    iget-object v2, p0, Lcom/mob/tools/gui/MobDrawerLayout;->drawerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/mob/tools/gui/MobDrawerLayout;->getHeight()I

    move-result v3

    invoke-virtual {v2, p1, v1, v0, v3}, Landroid/widget/FrameLayout;->layout(IIII)V

    :cond_6
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private dragToRight(I)V
    .locals 7

    .line 505
    sget-object v0, Lcom/mob/tools/gui/MobDrawerLayout$2;->$SwitchMap$com$mob$tools$gui$MobDrawerLayout$DrawerType:[I

    iget-object v1, p0, Lcom/mob/tools/gui/MobDrawerLayout;->type:Lcom/mob/tools/gui/MobDrawerLayout$DrawerType;

    invoke-virtual {v1}, Lcom/mob/tools/gui/MobDrawerLayout$DrawerType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    .line 566
    :pswitch_0
    iget-object v0, p0, Lcom/mob/tools/gui/MobDrawerLayout;->bodyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v0

    if-gez v0, :cond_6

    add-int/2addr v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 572
    :cond_0
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobDrawerLayout;->getWidth()I

    move-result p1

    add-int/2addr p1, v0

    .line 573
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobDrawerLayout;->getWidth()I

    move-result v2

    int-to-double v2, v2

    iget-wide v4, p0, Lcom/mob/tools/gui/MobDrawerLayout;->drawerWidth:D

    mul-double v2, v2, v4

    double-to-int v2, v2

    add-int/2addr v2, p1

    .line 574
    iget-object v3, p0, Lcom/mob/tools/gui/MobDrawerLayout;->bodyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/mob/tools/gui/MobDrawerLayout;->getHeight()I

    move-result v4

    invoke-virtual {v3, v0, v1, p1, v4}, Landroid/widget/FrameLayout;->layout(IIII)V

    .line 575
    iget-object v0, p0, Lcom/mob/tools/gui/MobDrawerLayout;->drawerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/mob/tools/gui/MobDrawerLayout;->getHeight()I

    move-result v3

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/widget/FrameLayout;->layout(IIII)V

    goto/16 :goto_2

    .line 555
    :pswitch_1
    iget-object v0, p0, Lcom/mob/tools/gui/MobDrawerLayout;->bodyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v0

    if-gez v0, :cond_6

    add-int/2addr v0, p1

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 561
    :cond_1
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobDrawerLayout;->getWidth()I

    move-result p1

    add-int/2addr p1, v0

    .line 562
    iget-object v2, p0, Lcom/mob/tools/gui/MobDrawerLayout;->bodyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/mob/tools/gui/MobDrawerLayout;->getHeight()I

    move-result v3

    invoke-virtual {v2, v0, v1, p1, v3}, Landroid/widget/FrameLayout;->layout(IIII)V

    goto/16 :goto_2

    .line 530
    :pswitch_2
    iget-object v0, p0, Lcom/mob/tools/gui/MobDrawerLayout;->drawerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v0

    if-gez v0, :cond_6

    add-int/2addr v0, p1

    if-lez v0, :cond_2

    const/4 v0, 0x0

    .line 536
    :cond_2
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobDrawerLayout;->getWidth()I

    move-result p1

    int-to-double v2, p1

    iget-wide v4, p0, Lcom/mob/tools/gui/MobDrawerLayout;->drawerWidth:D

    mul-double v2, v2, v4

    double-to-int p1, v2

    add-int/2addr p1, v0

    .line 537
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobDrawerLayout;->getWidth()I

    move-result v2

    add-int/2addr v2, p1

    .line 538
    iget-object v3, p0, Lcom/mob/tools/gui/MobDrawerLayout;->drawerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/mob/tools/gui/MobDrawerLayout;->getHeight()I

    move-result v4

    invoke-virtual {v3, v0, v1, p1, v4}, Landroid/widget/FrameLayout;->layout(IIII)V

    .line 539
    iget-object v0, p0, Lcom/mob/tools/gui/MobDrawerLayout;->bodyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/mob/tools/gui/MobDrawerLayout;->getHeight()I

    move-result v3

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/widget/FrameLayout;->layout(IIII)V

    goto/16 :goto_2

    .line 518
    :pswitch_3
    iget-object v0, p0, Lcom/mob/tools/gui/MobDrawerLayout;->bodyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v0

    .line 519
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobDrawerLayout;->getWidth()I

    move-result v2

    int-to-double v2, v2

    iget-wide v4, p0, Lcom/mob/tools/gui/MobDrawerLayout;->drawerWidth:D

    mul-double v2, v2, v4

    double-to-int v2, v2

    if-ge v0, v2, :cond_6

    add-int/2addr v0, p1

    if-le v0, v2, :cond_3

    goto :goto_0

    :cond_3
    move v2, v0

    .line 525
    :goto_0
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobDrawerLayout;->getWidth()I

    move-result p1

    add-int/2addr p1, v2

    .line 526
    iget-object v0, p0, Lcom/mob/tools/gui/MobDrawerLayout;->bodyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/mob/tools/gui/MobDrawerLayout;->getHeight()I

    move-result v3

    invoke-virtual {v0, v2, v1, p1, v3}, Landroid/widget/FrameLayout;->layout(IIII)V

    goto :goto_2

    .line 543
    :pswitch_4
    iget-object v0, p0, Lcom/mob/tools/gui/MobDrawerLayout;->drawerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v0

    .line 544
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobDrawerLayout;->getWidth()I

    move-result v2

    if-ge v0, v2, :cond_6

    add-int/2addr v0, p1

    if-le v0, v2, :cond_4

    goto :goto_1

    :cond_4
    move v2, v0

    .line 550
    :goto_1
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobDrawerLayout;->getWidth()I

    move-result p1

    int-to-double v3, p1

    iget-wide v5, p0, Lcom/mob/tools/gui/MobDrawerLayout;->drawerWidth:D

    mul-double v3, v3, v5

    double-to-int p1, v3

    add-int/2addr p1, v2

    .line 551
    iget-object v0, p0, Lcom/mob/tools/gui/MobDrawerLayout;->drawerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/mob/tools/gui/MobDrawerLayout;->getHeight()I

    move-result v3

    invoke-virtual {v0, v2, v1, p1, v3}, Landroid/widget/FrameLayout;->layout(IIII)V

    goto :goto_2

    .line 507
    :pswitch_5
    iget-object v0, p0, Lcom/mob/tools/gui/MobDrawerLayout;->drawerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v0

    if-gez v0, :cond_6

    add-int/2addr v0, p1

    if-lez v0, :cond_5

    const/4 v0, 0x0

    .line 513
    :cond_5
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobDrawerLayout;->getWidth()I

    move-result p1

    int-to-double v2, p1

    iget-wide v4, p0, Lcom/mob/tools/gui/MobDrawerLayout;->drawerWidth:D

    mul-double v2, v2, v4

    double-to-int p1, v2

    add-int/2addr p1, v0

    .line 514
    iget-object v2, p0, Lcom/mob/tools/gui/MobDrawerLayout;->drawerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/mob/tools/gui/MobDrawerLayout;->getHeight()I

    move-result v3

    invoke-virtual {v2, v0, v1, p1, v3}, Landroid/widget/FrameLayout;->layout(IIII)V

    :cond_6
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private drawShadow(Landroid/graphics/Canvas;)V
    .locals 12

    .line 277
    sget-object v0, Lcom/mob/tools/gui/MobDrawerLayout$2;->$SwitchMap$com$mob$tools$gui$MobDrawerLayout$DrawerType:[I

    iget-object v1, p0, Lcom/mob/tools/gui/MobDrawerLayout;->type:Lcom/mob/tools/gui/MobDrawerLayout$DrawerType;

    invoke-virtual {v1}, Lcom/mob/tools/gui/MobDrawerLayout$DrawerType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    .line 301
    iget-object v0, p0, Lcom/mob/tools/gui/MobDrawerLayout;->bodyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v0

    if-lez v0, :cond_3

    .line 303
    iget-object v1, p0, Lcom/mob/tools/gui/MobDrawerLayout;->paint:Landroid/graphics/Paint;

    new-instance v10, Landroid/graphics/LinearGradient;

    add-int/lit8 v2, v0, -0x19

    int-to-float v11, v2

    const/4 v4, 0x0

    int-to-float v0, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, -0x80000000

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v2, v10

    move v3, v11

    move v5, v0

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    const/4 v5, 0x0

    .line 304
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobDrawerLayout;->getHeight()I

    move-result v1

    int-to-float v7, v1

    iget-object v8, p0, Lcom/mob/tools/gui/MobDrawerLayout;->paint:Landroid/graphics/Paint;

    move-object v3, p1

    move v4, v11

    move v6, v0

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/mob/tools/gui/MobDrawerLayout;->bodyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getRight()I

    move-result v0

    .line 288
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobDrawerLayout;->getWidth()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 289
    iget-object v1, p0, Lcom/mob/tools/gui/MobDrawerLayout;->paint:Landroid/graphics/Paint;

    new-instance v10, Landroid/graphics/LinearGradient;

    int-to-float v11, v0

    const/4 v4, 0x0

    add-int/lit8 v0, v0, 0x19

    int-to-float v0, v0

    const/4 v6, 0x0

    const/high16 v7, -0x80000000

    const/4 v8, 0x0

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v2, v10

    move v3, v11

    move v5, v0

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 290
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobDrawerLayout;->getHeight()I

    move-result v1

    int-to-float v6, v1

    iget-object v7, p0, Lcom/mob/tools/gui/MobDrawerLayout;->paint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 294
    :cond_1
    iget-object v0, p0, Lcom/mob/tools/gui/MobDrawerLayout;->drawerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v0

    .line 295
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobDrawerLayout;->getWidth()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 296
    iget-object v1, p0, Lcom/mob/tools/gui/MobDrawerLayout;->paint:Landroid/graphics/Paint;

    new-instance v10, Landroid/graphics/LinearGradient;

    add-int/lit8 v2, v0, -0x19

    int-to-float v11, v2

    const/4 v4, 0x0

    int-to-float v0, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, -0x80000000

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v2, v10

    move v3, v11

    move v5, v0

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    const/4 v5, 0x0

    .line 297
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobDrawerLayout;->getHeight()I

    move-result v1

    int-to-float v7, v1

    iget-object v8, p0, Lcom/mob/tools/gui/MobDrawerLayout;->paint:Landroid/graphics/Paint;

    move-object v3, p1

    move v4, v11

    move v6, v0

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 279
    :cond_2
    iget-object v0, p0, Lcom/mob/tools/gui/MobDrawerLayout;->drawerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getRight()I

    move-result v0

    if-lez v0, :cond_3

    .line 281
    iget-object v1, p0, Lcom/mob/tools/gui/MobDrawerLayout;->paint:Landroid/graphics/Paint;

    new-instance v10, Landroid/graphics/LinearGradient;

    int-to-float v11, v0

    const/4 v4, 0x0

    add-int/lit8 v0, v0, 0x19

    int-to-float v0, v0

    const/4 v6, 0x0

    const/high16 v7, -0x80000000

    const/4 v8, 0x0

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v2, v10

    move v3, v11

    move v5, v0

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 282
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobDrawerLayout;->getHeight()I

    move-result v1

    int-to-float v6, v1

    iget-object v7, p0, Lcom/mob/tools/gui/MobDrawerLayout;->paint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    .line 72
    sget-object v0, Lcom/mob/tools/gui/SmoothScroller;->DEFAULT:Lcom/mob/tools/gui/SmoothScroller;

    invoke-virtual {v0, p1}, Lcom/mob/tools/gui/SmoothScroller;->getScroller(Landroid/content/Context;)Landroid/widget/Scroller;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/tools/gui/MobDrawerLayout;->scroller:Landroid/widget/Scroller;

    .line 74
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 75
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/mob/tools/gui/MobDrawerLayout;->touchSlop:I

    .line 76
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/mob/tools/gui/MobDrawerLayout;->maximumVelocity:I

    .line 78
    sget-object v0, Lcom/mob/tools/gui/MobDrawerLayout$DrawerType;->LEFT_COVER:Lcom/mob/tools/gui/MobDrawerLayout$DrawerType;

    iput-object v0, p0, Lcom/mob/tools/gui/MobDrawerLayout;->type:Lcom/mob/tools/gui/MobDrawerLayout$DrawerType;

    const-wide v0, 0x3fe999999999999aL    # 0.8

    .line 79
    iput-wide v0, p0, Lcom/mob/tools/gui/MobDrawerLayout;->drawerWidth:D

    const/4 v0, 0x0

    .line 80
    iput v0, p0, Lcom/mob/tools/gui/MobDrawerLayout;->touchState:I

    .line 81
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/mob/tools/gui/MobDrawerLayout;->paint:Landroid/graphics/Paint;

    .line 83
    new-instance v0, Lcom/mob/tools/gui/MobDrawerLayout$1;

    invoke-direct {v0, p0}, Lcom/mob/tools/gui/MobDrawerLayout$1;-><init>(Lcom/mob/tools/gui/MobDrawerLayout;)V

    .line 88
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mob/tools/gui/MobDrawerLayout;->bodyContainer:Landroid/widget/FrameLayout;

    .line 89
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mob/tools/gui/MobDrawerLayout;->drawerContainer:Landroid/widget/FrameLayout;

    .line 91
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    iget-object p1, p0, Lcom/mob/tools/gui/MobDrawerLayout;->bodyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1}, Lcom/mob/tools/gui/MobDrawerLayout;->addView(Landroid/view/View;)V

    .line 93
    iget-object p1, p0, Lcom/mob/tools/gui/MobDrawerLayout;->drawerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1}, Lcom/mob/tools/gui/MobDrawerLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private isClose()Z
    .locals 4

    .line 398
    sget-object v0, Lcom/mob/tools/gui/MobDrawerLayout$2;->$SwitchMap$com$mob$tools$gui$MobDrawerLayout$DrawerType:[I

    iget-object v1, p0, Lcom/mob/tools/gui/MobDrawerLayout;->type:Lcom/mob/tools/gui/MobDrawerLayout$DrawerType;

    invoke-virtual {v1}, Lcom/mob/tools/gui/MobDrawerLayout$DrawerType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 411
    :pswitch_0
    iget-object v0, p0, Lcom/mob/tools/gui/MobDrawerLayout;->bodyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getRight()I

    move-result v0

    invoke-virtual {p0}, Lcom/mob/tools/gui/MobDrawerLayout;->getWidth()I

    move-result v3

    if-ne v0, v3, :cond_0

    goto :goto_0

    .line 404
    :pswitch_1
    iget-object v0, p0, Lcom/mob/tools/gui/MobDrawerLayout;->bodyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 407
    :pswitch_2
    iget-object v0, p0, Lcom/mob/tools/gui/MobDrawerLayout;->drawerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/mob/tools/gui/MobDrawerLayout;->getWidth()I

    move-result v3

    if-ne v0, v3, :cond_0

    goto :goto_0

    .line 400
    :pswitch_3
    iget-object v0, p0, Lcom/mob/tools/gui/MobDrawerLayout;->drawerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getRight()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v2, v1

    :goto_1
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private switchDrawer(ZZ)V
    .locals 8

    .line 311
    iget-object v0, p0, Lcom/mob/tools/gui/MobDrawerLayout;->bodyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->clearFocus()V

    .line 312
    iget-object v0, p0, Lcom/mob/tools/gui/MobDrawerLayout;->drawerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->clearFocus()V

    .line 315
    sget-object v0, Lcom/mob/tools/gui/MobDrawerLayout$2;->$SwitchMap$com$mob$tools$gui$MobDrawerLayout$DrawerType:[I

    iget-object v1, p0, Lcom/mob/tools/gui/MobDrawerLayout;->type:Lcom/mob/tools/gui/MobDrawerLayout$DrawerType;

    invoke-virtual {v1}, Lcom/mob/tools/gui/MobDrawerLayout$DrawerType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    packed-switch v0, :pswitch_data_0

    const/4 p1, 0x0

    const/4 v3, 0x0

    goto :goto_2

    .line 332
    :pswitch_0
    iget-object v0, p0, Lcom/mob/tools/gui/MobDrawerLayout;->bodyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v0

    if-eqz p1, :cond_2

    .line 333
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobDrawerLayout;->getWidth()I

    move-result p1

    neg-int p1, p1

    int-to-double v2, p1

    iget-wide v4, p0, Lcom/mob/tools/gui/MobDrawerLayout;->drawerWidth:D

    goto :goto_0

    .line 322
    :pswitch_1
    iget-object v0, p0, Lcom/mob/tools/gui/MobDrawerLayout;->bodyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v0

    if-eqz p1, :cond_2

    .line 323
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobDrawerLayout;->getWidth()I

    move-result p1

    int-to-double v2, p1

    iget-wide v4, p0, Lcom/mob/tools/gui/MobDrawerLayout;->drawerWidth:D

    goto :goto_0

    .line 327
    :pswitch_2
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobDrawerLayout;->getWidth()I

    move-result v0

    .line 328
    iget-object v4, p0, Lcom/mob/tools/gui/MobDrawerLayout;->drawerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v4

    if-eqz p1, :cond_0

    int-to-double v2, v0

    .line 329
    iget-wide v5, p0, Lcom/mob/tools/gui/MobDrawerLayout;->drawerWidth:D

    mul-double v2, v2, v5

    :cond_0
    double-to-int p1, v2

    sub-int p1, v0, p1

    move v3, v4

    goto :goto_2

    .line 318
    :pswitch_3
    iget-object v0, p0, Lcom/mob/tools/gui/MobDrawerLayout;->drawerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v0

    if-eqz p1, :cond_1

    goto :goto_1

    .line 319
    :cond_1
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobDrawerLayout;->getWidth()I

    move-result p1

    neg-int p1, p1

    int-to-double v2, p1

    iget-wide v4, p0, Lcom/mob/tools/gui/MobDrawerLayout;->drawerWidth:D

    :goto_0
    mul-double v2, v2, v4

    :cond_2
    :goto_1
    double-to-int p1, v2

    move v3, v0

    .line 336
    :goto_2
    iget-object v0, p0, Lcom/mob/tools/gui/MobDrawerLayout;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    if-eq v3, p1, :cond_4

    .line 339
    iget-object v2, p0, Lcom/mob/tools/gui/MobDrawerLayout;->scroller:Landroid/widget/Scroller;

    const/4 v4, 0x0

    sub-int v5, p1, v3

    const/4 v6, 0x0

    if-eqz p2, :cond_3

    const/4 v7, 0x0

    goto :goto_3

    :cond_3
    const/16 v1, 0x64

    const/16 v7, 0x64

    :goto_3
    invoke-virtual/range {v2 .. v7}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 341
    :cond_4
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobDrawerLayout;->invalidate()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x0

    .line 147
    invoke-virtual {p0, v0}, Lcom/mob/tools/gui/MobDrawerLayout;->close(Z)V

    return-void
.end method

.method public close(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 142
    invoke-direct {p0, v0, p1}, Lcom/mob/tools/gui/MobDrawerLayout;->switchDrawer(ZZ)V

    return-void
.end method

.method public computeScroll()V
    .locals 8

    .line 345
    iget-object v0, p0, Lcom/mob/tools/gui/MobDrawerLayout;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 346
    sget-object v0, Lcom/mob/tools/gui/MobDrawerLayout$2;->$SwitchMap$com$mob$tools$gui$MobDrawerLayout$DrawerType:[I

    iget-object v2, p0, Lcom/mob/tools/gui/MobDrawerLayout;->type:Lcom/mob/tools/gui/MobDrawerLayout$DrawerType;

    invoke-virtual {v2}, Lcom/mob/tools/gui/MobDrawerLayout$DrawerType;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 368
    :pswitch_0
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobDrawerLayout;->getWidth()I

    move-result v0

    .line 369
    iget-object v2, p0, Lcom/mob/tools/gui/MobDrawerLayout;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    sub-int v3, v2, v0

    int-to-double v4, v0

    .line 371
    iget-wide v6, p0, Lcom/mob/tools/gui/MobDrawerLayout;->drawerWidth:D

    mul-double v4, v4, v6

    double-to-int v0, v4

    add-int/2addr v0, v2

    .line 372
    iget-object v4, p0, Lcom/mob/tools/gui/MobDrawerLayout;->bodyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/mob/tools/gui/MobDrawerLayout;->getHeight()I

    move-result v5

    invoke-virtual {v4, v3, v1, v2, v5}, Landroid/widget/FrameLayout;->layout(IIII)V

    .line 373
    iget-object v3, p0, Lcom/mob/tools/gui/MobDrawerLayout;->drawerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/mob/tools/gui/MobDrawerLayout;->getHeight()I

    move-result v4

    invoke-virtual {v3, v2, v1, v0, v4}, Landroid/widget/FrameLayout;->layout(IIII)V

    goto :goto_0

    .line 360
    :pswitch_1
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobDrawerLayout;->getWidth()I

    move-result v0

    .line 361
    iget-object v2, p0, Lcom/mob/tools/gui/MobDrawerLayout;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    int-to-double v3, v0

    .line 362
    iget-wide v5, p0, Lcom/mob/tools/gui/MobDrawerLayout;->drawerWidth:D

    mul-double v3, v3, v5

    double-to-int v3, v3

    add-int/2addr v3, v2

    add-int/2addr v0, v3

    .line 364
    iget-object v4, p0, Lcom/mob/tools/gui/MobDrawerLayout;->drawerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/mob/tools/gui/MobDrawerLayout;->getHeight()I

    move-result v5

    invoke-virtual {v4, v2, v1, v3, v5}, Landroid/widget/FrameLayout;->layout(IIII)V

    .line 365
    iget-object v2, p0, Lcom/mob/tools/gui/MobDrawerLayout;->bodyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/mob/tools/gui/MobDrawerLayout;->getHeight()I

    move-result v4

    invoke-virtual {v2, v3, v1, v0, v4}, Landroid/widget/FrameLayout;->layout(IIII)V

    goto :goto_0

    .line 355
    :pswitch_2
    iget-object v0, p0, Lcom/mob/tools/gui/MobDrawerLayout;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    .line 356
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobDrawerLayout;->getWidth()I

    move-result v2

    add-int/2addr v2, v0

    .line 357
    iget-object v3, p0, Lcom/mob/tools/gui/MobDrawerLayout;->bodyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/mob/tools/gui/MobDrawerLayout;->getHeight()I

    move-result v4

    invoke-virtual {v3, v0, v1, v2, v4}, Landroid/widget/FrameLayout;->layout(IIII)V

    goto :goto_0

    .line 349
    :pswitch_3
    iget-object v0, p0, Lcom/mob/tools/gui/MobDrawerLayout;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    .line 350
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobDrawerLayout;->getWidth()I

    move-result v2

    int-to-double v2, v2

    iget-wide v4, p0, Lcom/mob/tools/gui/MobDrawerLayout;->drawerWidth:D

    mul-double v2, v2, v4

    double-to-int v2, v2

    add-int/2addr v2, v0

    .line 351
    iget-object v3, p0, Lcom/mob/tools/gui/MobDrawerLayout;->drawerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/mob/tools/gui/MobDrawerLayout;->getHeight()I

    move-result v4

    invoke-virtual {v3, v0, v1, v2, v4}, Landroid/widget/FrameLayout;->layout(IIII)V

    .line 376
    :goto_0
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobDrawerLayout;->postInvalidate()V

    .line 385
    iget-object v0, p0, Lcom/mob/tools/gui/MobDrawerLayout;->listener:Lcom/mob/tools/gui/MobDrawerLayout$OnDrawerStateChangeListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mob/tools/gui/MobDrawerLayout;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalX()I

    move-result v0

    iget-object v1, p0, Lcom/mob/tools/gui/MobDrawerLayout;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getStartX()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 386
    iget-object v0, p0, Lcom/mob/tools/gui/MobDrawerLayout;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget-object v1, p0, Lcom/mob/tools/gui/MobDrawerLayout;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getStartX()I

    move-result v1

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x64

    iget-object v1, p0, Lcom/mob/tools/gui/MobDrawerLayout;->scroller:Landroid/widget/Scroller;

    .line 387
    invoke-virtual {v1}, Landroid/widget/Scroller;->getFinalX()I

    move-result v1

    iget-object v2, p0, Lcom/mob/tools/gui/MobDrawerLayout;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getStartX()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/2addr v0, v1

    .line 388
    iget-boolean v1, p0, Lcom/mob/tools/gui/MobDrawerLayout;->opened:Z

    if-eqz v1, :cond_0

    .line 389
    iget-object v1, p0, Lcom/mob/tools/gui/MobDrawerLayout;->listener:Lcom/mob/tools/gui/MobDrawerLayout$OnDrawerStateChangeListener;

    invoke-interface {v1, p0, v0}, Lcom/mob/tools/gui/MobDrawerLayout$OnDrawerStateChangeListener;->onClosing(Lcom/mob/tools/gui/MobDrawerLayout;I)V

    goto :goto_1

    .line 391
    :cond_0
    iget-object v1, p0, Lcom/mob/tools/gui/MobDrawerLayout;->listener:Lcom/mob/tools/gui/MobDrawerLayout$OnDrawerStateChangeListener;

    invoke-interface {v1, p0, v0}, Lcom/mob/tools/gui/MobDrawerLayout$OnDrawerStateChangeListener;->onOpening(Lcom/mob/tools/gui/MobDrawerLayout;I)V

    :cond_1
    :goto_1
    return-void

    .line 377
    :cond_2
    invoke-direct {p0}, Lcom/mob/tools/gui/MobDrawerLayout;->isClose()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 378
    iput-boolean v1, p0, Lcom/mob/tools/gui/MobDrawerLayout;->opened:Z

    return-void

    :cond_3
    const/4 v0, 0x1

    .line 381
    iput-boolean v0, p0, Lcom/mob/tools/gui/MobDrawerLayout;->opened:Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 256
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobDrawerLayout;->getDrawingTime()J

    move-result-wide v0

    .line 259
    sget-object v2, Lcom/mob/tools/gui/MobDrawerLayout$2;->$SwitchMap$com$mob$tools$gui$MobDrawerLayout$DrawerType:[I

    iget-object v3, p0, Lcom/mob/tools/gui/MobDrawerLayout;->type:Lcom/mob/tools/gui/MobDrawerLayout$DrawerType;

    invoke-virtual {v3}, Lcom/mob/tools/gui/MobDrawerLayout$DrawerType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    const/4 v3, 0x6

    if-eq v2, v3, :cond_0

    .line 267
    iget-object v2, p0, Lcom/mob/tools/gui/MobDrawerLayout;->drawerContainer:Landroid/widget/FrameLayout;

    .line 268
    iget-object v3, p0, Lcom/mob/tools/gui/MobDrawerLayout;->bodyContainer:Landroid/widget/FrameLayout;

    goto :goto_0

    .line 263
    :cond_0
    iget-object v2, p0, Lcom/mob/tools/gui/MobDrawerLayout;->bodyContainer:Landroid/widget/FrameLayout;

    .line 264
    iget-object v3, p0, Lcom/mob/tools/gui/MobDrawerLayout;->drawerContainer:Landroid/widget/FrameLayout;

    .line 271
    :goto_0
    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/mob/tools/gui/MobDrawerLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 272
    invoke-virtual {p0, p1, v3, v0, v1}, Lcom/mob/tools/gui/MobDrawerLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 273
    invoke-direct {p0, p1}, Lcom/mob/tools/gui/MobDrawerLayout;->drawShadow(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public isOpened()Z
    .locals 1

    .line 152
    iget-boolean v0, p0, Lcom/mob/tools/gui/MobDrawerLayout;->opened:Z

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 461
    iget-boolean v0, p0, Lcom/mob/tools/gui/MobDrawerLayout;->lockScroll:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 465
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v0, v2, :cond_1

    .line 466
    iget v4, p0, Lcom/mob/tools/gui/MobDrawerLayout;->touchState:I

    if-eqz v4, :cond_1

    return v3

    .line 470
    :cond_1
    iget-object v4, p0, Lcom/mob/tools/gui/MobDrawerLayout;->velocityTracker:Landroid/view/VelocityTracker;

    if-nez v4, :cond_2

    .line 471
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v4

    iput-object v4, p0, Lcom/mob/tools/gui/MobDrawerLayout;->velocityTracker:Landroid/view/VelocityTracker;

    .line 473
    :cond_2
    iget-object v4, p0, Lcom/mob/tools/gui/MobDrawerLayout;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    if-eqz v0, :cond_6

    if-eq v0, v3, :cond_4

    if-eq v0, v2, :cond_3

    const/4 p1, 0x3

    if-eq v0, p1, :cond_4

    goto :goto_0

    .line 482
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 483
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 484
    iget v2, p0, Lcom/mob/tools/gui/MobDrawerLayout;->lastMotionX:F

    sub-float v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-int v2, v2

    .line 485
    iget v4, p0, Lcom/mob/tools/gui/MobDrawerLayout;->lastMotionY:F

    sub-float/2addr p1, v4

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-int p1, p1

    if-ge p1, v2, :cond_7

    .line 486
    iget p1, p0, Lcom/mob/tools/gui/MobDrawerLayout;->touchSlop:I

    if-le v2, p1, :cond_7

    .line 487
    iput v3, p0, Lcom/mob/tools/gui/MobDrawerLayout;->touchState:I

    .line 488
    iput v0, p0, Lcom/mob/tools/gui/MobDrawerLayout;->lastMotionX:F

    goto :goto_0

    .line 493
    :cond_4
    iget-object p1, p0, Lcom/mob/tools/gui/MobDrawerLayout;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_5

    .line 494
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 p1, 0x0

    .line 495
    iput-object p1, p0, Lcom/mob/tools/gui/MobDrawerLayout;->velocityTracker:Landroid/view/VelocityTracker;

    .line 497
    :cond_5
    iput v1, p0, Lcom/mob/tools/gui/MobDrawerLayout;->touchState:I

    goto :goto_0

    .line 477
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/mob/tools/gui/MobDrawerLayout;->lastMotionX:F

    .line 478
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/mob/tools/gui/MobDrawerLayout;->lastMotionY:F

    .line 479
    iget-object p1, p0, Lcom/mob/tools/gui/MobDrawerLayout;->scroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    xor-int/2addr p1, v3

    iput p1, p0, Lcom/mob/tools/gui/MobDrawerLayout;->touchState:I

    .line 501
    :cond_7
    :goto_0
    iget p1, p0, Lcom/mob/tools/gui/MobDrawerLayout;->touchState:I

    if-eqz p1, :cond_8

    const/4 v1, 0x1

    :cond_8
    return v1
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    int-to-double p1, p4

    .line 197
    iget-wide v0, p0, Lcom/mob/tools/gui/MobDrawerLayout;->drawerWidth:D

    mul-double p1, p1, v0

    double-to-int p1, p1

    .line 198
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobDrawerLayout;->isOpened()Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    .line 199
    sget-object p2, Lcom/mob/tools/gui/MobDrawerLayout$2;->$SwitchMap$com$mob$tools$gui$MobDrawerLayout$DrawerType:[I

    iget-object v0, p0, Lcom/mob/tools/gui/MobDrawerLayout;->type:Lcom/mob/tools/gui/MobDrawerLayout$DrawerType;

    invoke-virtual {v0}, Lcom/mob/tools/gui/MobDrawerLayout$DrawerType;->ordinal()I

    move-result v0

    aget p2, p2, v0

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_0

    .line 221
    :pswitch_0
    iget-object p2, p0, Lcom/mob/tools/gui/MobDrawerLayout;->bodyContainer:Landroid/widget/FrameLayout;

    neg-int v0, p1

    sub-int p1, p4, p1

    invoke-virtual {p2, v0, p3, p1, p5}, Landroid/widget/FrameLayout;->layout(IIII)V

    .line 222
    iget-object p2, p0, Lcom/mob/tools/gui/MobDrawerLayout;->drawerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p1, p3, p4, p5}, Landroid/widget/FrameLayout;->layout(IIII)V

    goto/16 :goto_0

    .line 213
    :pswitch_1
    iget-object p2, p0, Lcom/mob/tools/gui/MobDrawerLayout;->bodyContainer:Landroid/widget/FrameLayout;

    neg-int v0, p1

    sub-int p1, p4, p1

    invoke-virtual {p2, v0, p3, p1, p5}, Landroid/widget/FrameLayout;->layout(IIII)V

    .line 214
    iget-object p2, p0, Lcom/mob/tools/gui/MobDrawerLayout;->drawerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p1, p3, p4, p5}, Landroid/widget/FrameLayout;->layout(IIII)V

    goto/16 :goto_0

    .line 209
    :pswitch_2
    iget-object p2, p0, Lcom/mob/tools/gui/MobDrawerLayout;->bodyContainer:Landroid/widget/FrameLayout;

    add-int/2addr p4, p1

    invoke-virtual {p2, p1, p3, p4, p5}, Landroid/widget/FrameLayout;->layout(IIII)V

    .line 210
    iget-object p2, p0, Lcom/mob/tools/gui/MobDrawerLayout;->drawerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p3, p3, p1, p5}, Landroid/widget/FrameLayout;->layout(IIII)V

    goto/16 :goto_0

    .line 201
    :pswitch_3
    iget-object p2, p0, Lcom/mob/tools/gui/MobDrawerLayout;->bodyContainer:Landroid/widget/FrameLayout;

    add-int/2addr p4, p1

    invoke-virtual {p2, p1, p3, p4, p5}, Landroid/widget/FrameLayout;->layout(IIII)V

    .line 202
    iget-object p2, p0, Lcom/mob/tools/gui/MobDrawerLayout;->drawerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p3, p3, p1, p5}, Landroid/widget/FrameLayout;->layout(IIII)V

    goto/16 :goto_0

    .line 217
    :pswitch_4
    iget-object p2, p0, Lcom/mob/tools/gui/MobDrawerLayout;->bodyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p3, p3, p4, p5}, Landroid/widget/FrameLayout;->layout(IIII)V

    .line 218
    iget-object p2, p0, Lcom/mob/tools/gui/MobDrawerLayout;->drawerContainer:Landroid/widget/FrameLayout;

    sub-int p1, p4, p1

    invoke-virtual {p2, p1, p3, p4, p5}, Landroid/widget/FrameLayout;->layout(IIII)V

    goto :goto_0

    .line 205
    :pswitch_5
    iget-object p2, p0, Lcom/mob/tools/gui/MobDrawerLayout;->bodyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p3, p3, p4, p5}, Landroid/widget/FrameLayout;->layout(IIII)V

    .line 206
    iget-object p2, p0, Lcom/mob/tools/gui/MobDrawerLayout;->drawerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p3, p3, p1, p5}, Landroid/widget/FrameLayout;->layout(IIII)V

    goto :goto_0

    .line 226
    :cond_0
    sget-object p2, Lcom/mob/tools/gui/MobDrawerLayout$2;->$SwitchMap$com$mob$tools$gui$MobDrawerLayout$DrawerType:[I

    iget-object v0, p0, Lcom/mob/tools/gui/MobDrawerLayout;->type:Lcom/mob/tools/gui/MobDrawerLayout$DrawerType;

    invoke-virtual {v0}, Lcom/mob/tools/gui/MobDrawerLayout$DrawerType;->ordinal()I

    move-result v0

    aget p2, p2, v0

    packed-switch p2, :pswitch_data_1

    goto :goto_0

    .line 248
    :pswitch_6
    iget-object p2, p0, Lcom/mob/tools/gui/MobDrawerLayout;->bodyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p3, p3, p4, p5}, Landroid/widget/FrameLayout;->layout(IIII)V

    .line 249
    iget-object p2, p0, Lcom/mob/tools/gui/MobDrawerLayout;->drawerContainer:Landroid/widget/FrameLayout;

    add-int/2addr p1, p4

    invoke-virtual {p2, p4, p3, p1, p5}, Landroid/widget/FrameLayout;->layout(IIII)V

    goto :goto_0

    .line 240
    :pswitch_7
    iget-object p2, p0, Lcom/mob/tools/gui/MobDrawerLayout;->bodyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p3, p3, p4, p5}, Landroid/widget/FrameLayout;->layout(IIII)V

    .line 241
    iget-object p2, p0, Lcom/mob/tools/gui/MobDrawerLayout;->drawerContainer:Landroid/widget/FrameLayout;

    sub-int p1, p4, p1

    invoke-virtual {p2, p1, p3, p4, p5}, Landroid/widget/FrameLayout;->layout(IIII)V

    goto :goto_0

    .line 236
    :pswitch_8
    iget-object p2, p0, Lcom/mob/tools/gui/MobDrawerLayout;->bodyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p3, p3, p4, p5}, Landroid/widget/FrameLayout;->layout(IIII)V

    .line 237
    iget-object p2, p0, Lcom/mob/tools/gui/MobDrawerLayout;->drawerContainer:Landroid/widget/FrameLayout;

    neg-int p1, p1

    invoke-virtual {p2, p1, p3, p3, p5}, Landroid/widget/FrameLayout;->layout(IIII)V

    goto :goto_0

    .line 228
    :pswitch_9
    iget-object p2, p0, Lcom/mob/tools/gui/MobDrawerLayout;->bodyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p3, p3, p4, p5}, Landroid/widget/FrameLayout;->layout(IIII)V

    .line 229
    iget-object p2, p0, Lcom/mob/tools/gui/MobDrawerLayout;->drawerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p3, p3, p1, p5}, Landroid/widget/FrameLayout;->layout(IIII)V

    goto :goto_0

    .line 244
    :pswitch_a
    iget-object p2, p0, Lcom/mob/tools/gui/MobDrawerLayout;->bodyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p3, p3, p4, p5}, Landroid/widget/FrameLayout;->layout(IIII)V

    .line 245
    iget-object p2, p0, Lcom/mob/tools/gui/MobDrawerLayout;->drawerContainer:Landroid/widget/FrameLayout;

    add-int/2addr p1, p4

    invoke-virtual {p2, p4, p3, p1, p5}, Landroid/widget/FrameLayout;->layout(IIII)V

    goto :goto_0

    .line 232
    :pswitch_b
    iget-object p2, p0, Lcom/mob/tools/gui/MobDrawerLayout;->bodyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p3, p3, p4, p5}, Landroid/widget/FrameLayout;->layout(IIII)V

    .line 233
    iget-object p2, p0, Lcom/mob/tools/gui/MobDrawerLayout;->drawerContainer:Landroid/widget/FrameLayout;

    neg-int p1, p1

    invoke-virtual {p2, p1, p3, p3, p5}, Landroid/widget/FrameLayout;->layout(IIII)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 5

    .line 184
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 185
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobDrawerLayout;->getMeasuredWidth()I

    move-result p1

    .line 186
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobDrawerLayout;->getMeasuredHeight()I

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    .line 187
    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 188
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 189
    iget-object v2, p0, Lcom/mob/tools/gui/MobDrawerLayout;->bodyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1, p2}, Landroid/widget/FrameLayout;->measure(II)V

    int-to-double v1, p1

    .line 190
    iget-wide v3, p0, Lcom/mob/tools/gui/MobDrawerLayout;->drawerWidth:D

    mul-double v1, v1, v3

    double-to-int p1, v1

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 191
    iget-object v0, p0, Lcom/mob/tools/gui/MobDrawerLayout;->drawerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1, p2}, Landroid/widget/FrameLayout;->measure(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 418
    iget-object v0, p0, Lcom/mob/tools/gui/MobDrawerLayout;->velocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 419
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/tools/gui/MobDrawerLayout;->velocityTracker:Landroid/view/VelocityTracker;

    .line 421
    :cond_0
    iget-object v0, p0, Lcom/mob/tools/gui/MobDrawerLayout;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 423
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_7

    if-eq v0, v1, :cond_5

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_5

    goto :goto_1

    .line 433
    :cond_1
    iget v0, p0, Lcom/mob/tools/gui/MobDrawerLayout;->touchState:I

    if-eq v0, v1, :cond_2

    .line 434
    invoke-virtual {p0, p1}, Lcom/mob/tools/gui/MobDrawerLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/mob/tools/gui/MobDrawerLayout;->touchState:I

    if-ne v0, v1, :cond_9

    .line 435
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    .line 436
    iget v0, p0, Lcom/mob/tools/gui/MobDrawerLayout;->lastMotionX:F

    sub-float/2addr v0, p1

    float-to-int v0, v0

    if-gez v0, :cond_3

    neg-int v0, v0

    .line 438
    invoke-direct {p0, v0}, Lcom/mob/tools/gui/MobDrawerLayout;->dragToRight(I)V

    goto :goto_0

    :cond_3
    if-lez v0, :cond_4

    .line 440
    invoke-direct {p0, v0}, Lcom/mob/tools/gui/MobDrawerLayout;->dragToLeft(I)V

    .line 442
    :cond_4
    :goto_0
    iput p1, p0, Lcom/mob/tools/gui/MobDrawerLayout;->lastMotionX:F

    goto :goto_1

    .line 447
    :cond_5
    iget p1, p0, Lcom/mob/tools/gui/MobDrawerLayout;->touchState:I

    if-ne p1, v1, :cond_6

    iget-object p1, p0, Lcom/mob/tools/gui/MobDrawerLayout;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_6

    const/16 v0, 0x3e8

    .line 448
    iget v2, p0, Lcom/mob/tools/gui/MobDrawerLayout;->maximumVelocity:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 449
    iget-object p1, p0, Lcom/mob/tools/gui/MobDrawerLayout;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result p1

    float-to-int p1, p1

    invoke-direct {p0, p1}, Lcom/mob/tools/gui/MobDrawerLayout;->computeDrag(I)V

    .line 450
    iget-object p1, p0, Lcom/mob/tools/gui/MobDrawerLayout;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 p1, 0x0

    .line 451
    iput-object p1, p0, Lcom/mob/tools/gui/MobDrawerLayout;->velocityTracker:Landroid/view/VelocityTracker;

    :cond_6
    const/4 p1, 0x0

    .line 453
    iput p1, p0, Lcom/mob/tools/gui/MobDrawerLayout;->touchState:I

    goto :goto_1

    .line 425
    :cond_7
    iget v0, p0, Lcom/mob/tools/gui/MobDrawerLayout;->touchState:I

    if-eqz v0, :cond_9

    .line 426
    iget-object v0, p0, Lcom/mob/tools/gui/MobDrawerLayout;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_8

    .line 427
    iget-object v0, p0, Lcom/mob/tools/gui/MobDrawerLayout;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 429
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/mob/tools/gui/MobDrawerLayout;->lastMotionX:F

    :cond_9
    :goto_1
    return v1
.end method

.method public open()V
    .locals 1

    const/4 v0, 0x0

    .line 137
    invoke-virtual {p0, v0}, Lcom/mob/tools/gui/MobDrawerLayout;->open(Z)V

    return-void
.end method

.method public open(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 132
    invoke-direct {p0, v0, p1}, Lcom/mob/tools/gui/MobDrawerLayout;->switchDrawer(ZZ)V

    return-void
.end method

.method public setBody(Landroid/view/View;)V
    .locals 2

    .line 162
    iget-object v0, p0, Lcom/mob/tools/gui/MobDrawerLayout;->bodyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mob/tools/gui/MobDrawerLayout;->bodyContainer:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 163
    :goto_0
    invoke-static {v0, p1}, Lcom/mob/tools/utils/ResHelper;->isEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 164
    iget-object v0, p0, Lcom/mob/tools/gui/MobDrawerLayout;->bodyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 165
    iget-object v0, p0, Lcom/mob/tools/gui/MobDrawerLayout;->bodyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public setDrawer(Landroid/view/View;)V
    .locals 2

    .line 171
    iget-object v0, p0, Lcom/mob/tools/gui/MobDrawerLayout;->drawerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mob/tools/gui/MobDrawerLayout;->drawerContainer:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 172
    :goto_0
    invoke-static {v0, p1}, Lcom/mob/tools/utils/ResHelper;->isEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 173
    iget-object v0, p0, Lcom/mob/tools/gui/MobDrawerLayout;->drawerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 174
    iget-object v0, p0, Lcom/mob/tools/gui/MobDrawerLayout;->drawerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public setDrawerType(Lcom/mob/tools/gui/MobDrawerLayout$DrawerType;)V
    .locals 1

    if-nez p1, :cond_0

    .line 99
    sget-object p1, Lcom/mob/tools/gui/MobDrawerLayout$DrawerType;->LEFT_COVER:Lcom/mob/tools/gui/MobDrawerLayout$DrawerType;

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/mob/tools/gui/MobDrawerLayout;->type:Lcom/mob/tools/gui/MobDrawerLayout$DrawerType;

    if-eq v0, p1, :cond_2

    .line 102
    iput-object p1, p0, Lcom/mob/tools/gui/MobDrawerLayout;->type:Lcom/mob/tools/gui/MobDrawerLayout$DrawerType;

    .line 103
    sget-object v0, Lcom/mob/tools/gui/MobDrawerLayout$2;->$SwitchMap$com$mob$tools$gui$MobDrawerLayout$DrawerType:[I

    invoke-virtual {p1}, Lcom/mob/tools/gui/MobDrawerLayout$DrawerType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    .line 109
    iget-object p1, p0, Lcom/mob/tools/gui/MobDrawerLayout;->bodyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->bringToFront()V

    goto :goto_0

    .line 106
    :cond_1
    iget-object p1, p0, Lcom/mob/tools/gui/MobDrawerLayout;->drawerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->bringToFront()V

    .line 112
    :goto_0
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobDrawerLayout;->postInvalidate()V

    :cond_2
    return-void
.end method

.method public setDrawerWidth(D)V
    .locals 3

    const-wide/16 v0, 0x0

    cmpg-double v2, p1, v0

    if-gez v2, :cond_0

    const-wide p1, 0x3fe99999a0000000L    # 0.800000011920929

    :cond_0
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, p1, v0

    if-lez v2, :cond_1

    move-wide p1, v0

    .line 124
    :cond_1
    iget-wide v0, p0, Lcom/mob/tools/gui/MobDrawerLayout;->drawerWidth:D

    cmpl-double v2, v0, p1

    if-eqz v2, :cond_2

    .line 125
    iput-wide p1, p0, Lcom/mob/tools/gui/MobDrawerLayout;->drawerWidth:D

    .line 126
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobDrawerLayout;->postInvalidate()V

    :cond_2
    return-void
.end method

.method public setLockScroll(Z)V
    .locals 0

    .line 180
    iput-boolean p1, p0, Lcom/mob/tools/gui/MobDrawerLayout;->lockScroll:Z

    return-void
.end method

.method public setOnDrawerStateChangeListener(Lcom/mob/tools/gui/MobDrawerLayout$OnDrawerStateChangeListener;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/mob/tools/gui/MobDrawerLayout;->listener:Lcom/mob/tools/gui/MobDrawerLayout$OnDrawerStateChangeListener;

    return-void
.end method
