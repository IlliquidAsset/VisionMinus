.class public Lcom/powervision/base/views/NotifyMessageTextView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "NotifyMessageTextView.java"


# instance fields
.field private message:Lcom/powervision/base/warning/HoverMessage;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public getMessage()Lcom/powervision/base/warning/HoverMessage;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/powervision/base/views/NotifyMessageTextView;->message:Lcom/powervision/base/warning/HoverMessage;

    return-object v0
.end method

.method public setMessage(Lcom/powervision/base/warning/HoverMessage;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/powervision/base/views/NotifyMessageTextView;->message:Lcom/powervision/base/warning/HoverMessage;

    return-void
.end method
