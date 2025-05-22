.class public Lcom/lewis/edit/widgets/CustomItemTouchHelper;
.super Landroidx/recyclerview/widget/ItemTouchHelper;
.source "CustomItemTouchHelper.java"


# instance fields
.field private mCallback:Lcom/lewis/edit/widgets/CustomItemTouchHelperCallback;


# direct methods
.method public constructor <init>(Lcom/lewis/edit/widgets/CustomItemTouchHelperCallback$OnItemTouchCallback;)V
    .locals 1

    .line 12
    new-instance v0, Lcom/lewis/edit/widgets/CustomItemTouchHelperCallback;

    invoke-direct {v0, p1}, Lcom/lewis/edit/widgets/CustomItemTouchHelperCallback;-><init>(Lcom/lewis/edit/widgets/CustomItemTouchHelperCallback$OnItemTouchCallback;)V

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    .line 13
    new-instance v0, Lcom/lewis/edit/widgets/CustomItemTouchHelperCallback;

    invoke-direct {v0, p1}, Lcom/lewis/edit/widgets/CustomItemTouchHelperCallback;-><init>(Lcom/lewis/edit/widgets/CustomItemTouchHelperCallback$OnItemTouchCallback;)V

    iput-object v0, p0, Lcom/lewis/edit/widgets/CustomItemTouchHelper;->mCallback:Lcom/lewis/edit/widgets/CustomItemTouchHelperCallback;

    return-void
.end method


# virtual methods
.method public setDragEnabled(Z)V
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/lewis/edit/widgets/CustomItemTouchHelper;->mCallback:Lcom/lewis/edit/widgets/CustomItemTouchHelperCallback;

    invoke-virtual {v0, p1}, Lcom/lewis/edit/widgets/CustomItemTouchHelperCallback;->setDragEnable(Z)V

    return-void
.end method

.method public setSwipeEnabled(Z)V
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/lewis/edit/widgets/CustomItemTouchHelper;->mCallback:Lcom/lewis/edit/widgets/CustomItemTouchHelperCallback;

    invoke-virtual {v0, p1}, Lcom/lewis/edit/widgets/CustomItemTouchHelperCallback;->setSwipeEnable(Z)V

    return-void
.end method
