.class public final Lme/yokeyword/indexablerecyclerview/R$styleable;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/yokeyword/indexablerecyclerview/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final IndexableRecyclerView:[I

.field public static final IndexableRecyclerView_indexBar_background:I = 0x0

.field public static final IndexableRecyclerView_indexBar_layout_width:I = 0x1

.field public static final IndexableRecyclerView_indexBar_selectedTextColor:I = 0x2

.field public static final IndexableRecyclerView_indexBar_textColor:I = 0x3

.field public static final IndexableRecyclerView_indexBar_textSize:I = 0x4

.field public static final IndexableRecyclerView_indexBar_textSpace:I = 0x5


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lme/yokeyword/indexablerecyclerview/R$styleable;->IndexableRecyclerView:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f040258
        0x7f040259
        0x7f04025a
        0x7f04025b
        0x7f04025c
        0x7f04025d
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
