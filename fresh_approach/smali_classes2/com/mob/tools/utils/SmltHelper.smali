.class public Lcom/mob/tools/utils/SmltHelper;
.super Ljava/lang/Object;
.source "SmltHelper.java"


# static fields
.field private static final applist1:[I

.field private static final applist2:[I

.field private static final applist3:[I

.field private static final applist4:[I

.field private static final applist5:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x1ac

    new-array v0, v0, [I

    .line 26
    fill-array-data v0, :array_0

    sput-object v0, Lcom/mob/tools/utils/SmltHelper;->applist1:[I

    const/16 v0, 0x1bf

    new-array v0, v0, [I

    .line 27
    fill-array-data v0, :array_1

    sput-object v0, Lcom/mob/tools/utils/SmltHelper;->applist2:[I

    const/16 v0, 0x1bc

    new-array v0, v0, [I

    .line 28
    fill-array-data v0, :array_2

    sput-object v0, Lcom/mob/tools/utils/SmltHelper;->applist3:[I

    const/16 v0, 0x1e1

    new-array v0, v0, [I

    .line 29
    fill-array-data v0, :array_3

    sput-object v0, Lcom/mob/tools/utils/SmltHelper;->applist4:[I

    const/16 v0, 0x1a9

    new-array v0, v0, [I

    .line 30
    fill-array-data v0, :array_4

    sput-object v0, Lcom/mob/tools/utils/SmltHelper;->applist5:[I

    return-void

    :array_0
    .array-data 4
        0x5c
        0x50
        0x52
        0x11
        0x54
        0x4a
        0x58
        0x50
        0x4a
        0x11
        0x5e
        0x51
        0x5b
        0x4d
        0x50
        0x56
        0x5b
        0x13
        0x5c
        0x50
        0x52
        0x11
        0x4b
        0x5a
        0x51
        0x5c
        0x5a
        0x51
        0x4b
        0x11
        0x4e
        0x4e
        0x4f
        0x56
        0x52
        0x13
        0x5c
        0x50
        0x52
        0x11
        0x47
        0x56
        0x52
        0x5e
        0x53
        0x5e
        0x46
        0x5e
        0x11
        0x4b
        0x56
        0x51
        0x58
        0x11
        0x5e
        0x51
        0x5b
        0x4d
        0x50
        0x56
        0x5b
        0x13
        0x5c
        0x50
        0x52
        0x11
        0x56
        0x59
        0x53
        0x46
        0x4b
        0x5a
        0x54
        0x11
        0x56
        0x51
        0x4f
        0x4a
        0x4b
        0x52
        0x5a
        0x4b
        0x57
        0x50
        0x5b
        0x13
        0x5c
        0x50
        0x52
        0x11
        0x5c
        0x53
        0x5a
        0x5e
        0x51
        0x52
        0x5e
        0x4c
        0x4b
        0x5a
        0x4d
        0x11
        0x52
        0x58
        0x4a
        0x5e
        0x4d
        0x5b
        0x60
        0x5c
        0x51
        0x13
        0x5c
        0x50
        0x52
        0x11
        0x6e
        0x4a
        0x51
        0x5e
        0x4d
        0x13
        0x5c
        0x50
        0x52
        0x11
        0x5e
        0x4a
        0x4b
        0x50
        0x51
        0x5e
        0x49
        0x56
        0x11
        0x52
        0x56
        0x51
        0x56
        0x52
        0x5e
        0x4f
        0x13
        0x5c
        0x50
        0x52
        0x11
        0x5b
        0x4c
        0x56
        0x11
        0x5e
        0x51
        0x4b
        0x11
        0x4c
        0x5a
        0x4d
        0x49
        0x5a
        0x4d
        0x13
        0x5c
        0x50
        0x52
        0x11
        0x4b
        0x5a
        0x51
        0x5c
        0x5a
        0x51
        0x4b
        0x11
        0x51
        0x5a
        0x48
        0x4c
        0x13
        0x5c
        0x50
        0x52
        0x11
        0x52
        0x5a
        0x5b
        0x56
        0x5e
        0x4b
        0x5a
        0x54
        0x11
        0x52
        0x4b
        0x54
        0x53
        0x50
        0x58
        0x58
        0x5a
        0x4d
        0x13
        0x5c
        0x50
        0x52
        0x11
        0x4c
        0x4c
        0x11
        0x5e
        0x51
        0x5b
        0x4d
        0x50
        0x56
        0x5b
        0x11
        0x5e
        0x4d
        0x4b
        0x56
        0x5c
        0x53
        0x5a
        0x11
        0x49
        0x56
        0x5b
        0x5a
        0x50
        0x13
        0x5c
        0x50
        0x52
        0x11
        0x5e
        0x5c
        0x57
        0x56
        0x5a
        0x49
        0x50
        0x11
        0x49
        0x56
        0x4f
        0x4c
        0x57
        0x50
        0x4f
        0x13
        0x5c
        0x51
        0x11
        0x48
        0x4f
        0x4c
        0x11
        0x52
        0x50
        0x59
        0x59
        0x56
        0x5c
        0x5a
        0x60
        0x5a
        0x51
        0x58
        0x13
        0x5c
        0x50
        0x52
        0x11
        0x57
        0x5e
        0x4f
        0x4f
        0x46
        0x5a
        0x53
        0x5a
        0x52
        0x5a
        0x51
        0x4b
        0x4c
        0x11
        0x7e
        0x51
        0x5b
        0x4d
        0x50
        0x56
        0x5b
        0x7e
        0x51
        0x56
        0x52
        0x5e
        0x53
        0x13
        0x5c
        0x50
        0x52
        0x11
        0x52
        0x5a
        0x5b
        0x56
        0x5e
        0x4b
        0x5a
        0x54
        0x11
        0x5e
        0x4b
        0x5c
        0x56
        0x11
        0x4c
        0x5a
        0x4d
        0x49
        0x56
        0x5c
        0x5a
        0x13
        0x5c
        0x50
        0x52
        0x11
        0x4b
        0x52
        0x4d
        0x56
        0x11
        0x5e
        0x4f
        0x4f
        0x11
        0x52
        0x5e
        0x56
        0x51
        0x13
        0x5c
        0x50
        0x52
        0x11
        0x4e
        0x56
        0x57
        0x50
        0x50
        0x11
        0x5e
        0x4f
        0x4f
        0x4c
        0x4b
        0x50
        0x4d
        0x5a
        0x13
        0x5c
        0x50
        0x52
        0x11
        0x6a
        0x7c
        0x72
        0x50
        0x5d
        0x56
        0x53
        0x5a
        0x13
        0x5c
        0x50
        0x52
        0x11
        0x52
        0x5a
        0x5b
        0x56
        0x5e
        0x4b
        0x5a
        0x54
        0x11
        0x5a
        0x51
        0x58
        0x56
        0x51
        0x5a
        0x5a
        0x4d
        0x52
        0x50
        0x5b
        0x5a
        0x13
        0x5c
        0x50
        0x52
        0x11
        0x4e
        0x4a
        0x5e
        0x53
        0x5c
        0x50
        0x52
        0x52
        0x11
        0x48
        0x59
        0x5b
        0x11
        0x4c
        0x5a
        0x4d
        0x49
        0x56
        0x5c
        0x5a
    .end array-data

    :array_1
    .array-data 4
        0x5c
        0x50
        0x52
        0x11
        0x72
        0x50
        0x5d
        0x56
        0x53
        0x5a
        0x6b
        0x56
        0x5c
        0x54
        0x5a
        0x4b
        0x13
        0x5c
        0x50
        0x52
        0x11
        0x52
        0x5a
        0x5b
        0x56
        0x5e
        0x4b
        0x5a
        0x54
        0x11
        0x4f
        0x4d
        0x50
        0x49
        0x56
        0x5b
        0x5a
        0x4d
        0x4c
        0x11
        0x5b
        0x4d
        0x52
        0x13
        0x5c
        0x50
        0x52
        0x11
        0x4e
        0x4b
        0x56
        0x11
        0x4c
        0x5a
        0x4d
        0x49
        0x56
        0x5c
        0x5a
        0x11
        0x5c
        0x50
        0x53
        0x50
        0x4d
        0x4c
        0x5a
        0x4d
        0x49
        0x56
        0x5c
        0x5a
        0x13
        0x5c
        0x50
        0x52
        0x11
        0x4b
        0x5a
        0x51
        0x5c
        0x5a
        0x51
        0x4b
        0x11
        0x5e
        0x51
        0x5b
        0x4d
        0x50
        0x56
        0x5b
        0x11
        0x4e
        0x4e
        0x5b
        0x50
        0x48
        0x51
        0x53
        0x50
        0x5e
        0x5b
        0x5a
        0x4d
        0x13
        0x5c
        0x50
        0x52
        0x11
        0x5b
        0x56
        0x5e
        0x51
        0x4f
        0x56
        0x51
        0x58
        0x11
        0x49
        0xe
        0x13
        0x5c
        0x50
        0x52
        0x11
        0x52
        0x5a
        0x5b
        0x56
        0x5e
        0x4b
        0x5a
        0x54
        0x11
        0x59
        0x48
        0x54
        0x11
        0x4f
        0x53
        0x4a
        0x58
        0x56
        0x51
        0x13
        0x5c
        0x50
        0x52
        0x11
        0x58
        0x4d
        0x5a
        0x5a
        0x51
        0x4f
        0x50
        0x56
        0x51
        0x4b
        0x11
        0x5e
        0x51
        0x5b
        0x4d
        0x50
        0x56
        0x5b
        0x11
        0x52
        0x5c
        0xe
        0xf
        0xf
        0x7
        0x9
        0x11
        0x5e
        0x5c
        0x4b
        0x56
        0x49
        0x56
        0x4b
        0x46
        0x13
        0x5c
        0x50
        0x52
        0x11
        0x4e
        0x4a
        0x5e
        0x53
        0x5c
        0x50
        0x52
        0x52
        0x11
        0x4b
        0x56
        0x52
        0x5a
        0x4c
        0x5a
        0x4d
        0x49
        0x56
        0x5c
        0x5a
        0x13
        0x5c
        0x50
        0x52
        0x11
        0x52
        0x5a
        0x5b
        0x56
        0x5e
        0x4b
        0x5a
        0x54
        0x13
        0x5c
        0x50
        0x52
        0x11
        0x4e
        0x4a
        0x5e
        0x53
        0x5c
        0x50
        0x52
        0x52
        0x11
        0x4e
        0x5c
        0x4d
        0x56
        0x53
        0x52
        0x4c
        0x58
        0x4b
        0x4a
        0x51
        0x51
        0x5a
        0x53
        0x13
        0x5c
        0x50
        0x52
        0x11
        0x4b
        0x5a
        0x51
        0x5c
        0x5a
        0x51
        0x4b
        0x11
        0x52
        0x50
        0x5d
        0x56
        0x53
        0x5a
        0x4e
        0x4e
        0x13
        0x5c
        0x50
        0x52
        0x11
        0x4c
        0x4c
        0x11
        0x5e
        0x51
        0x5b
        0x4d
        0x50
        0x56
        0x5b
        0x11
        0x4a
        0x58
        0x5c
        0x11
        0x5e
        0x48
        0x5a
        0x52
        0x5a
        0x13
        0x5c
        0x50
        0x52
        0x11
        0x5c
        0x53
        0x5a
        0x5e
        0x51
        0x52
        0x5e
        0x4c
        0x4b
        0x5a
        0x4d
        0x11
        0x4c
        0x5b
        0x54
        0x13
        0x5c
        0x50
        0x52
        0x11
        0x47
        0x4a
        0x51
        0x52
        0x5a
        0x51
        0x58
        0x11
        0x4f
        0x56
        0x51
        0x5b
        0x4a
        0x50
        0x5b
        0x4a
        0x50
        0x13
        0x5c
        0x50
        0x52
        0x11
        0x48
        0x4a
        0x5d
        0x5e
        0x13
        0x5c
        0x50
        0x52
        0x11
        0x52
        0x5a
        0x5b
        0x56
        0x5e
        0x4b
        0x5a
        0x54
        0x11
        0x53
        0x5d
        0x4c
        0x11
        0x5a
        0x52
        0xd
        0x11
        0x4a
        0x56
        0x13
        0x5c
        0x50
        0x52
        0x11
        0x4c
        0x56
        0x51
        0x5e
        0x11
        0x48
        0x5a
        0x56
        0x5d
        0x50
        0x13
        0x5c
        0x50
        0x52
        0x11
        0x52
        0x5a
        0x5b
        0x56
        0x5e
        0x4b
        0x5a
        0x54
        0x11
        0x50
        0x52
        0x5e
        0x5c
        0x4f
        0x13
        0x5c
        0x50
        0x52
        0x11
        0x5e
        0x52
        0x5e
        0x4f
        0x11
        0x5e
        0x51
        0x5b
        0x4d
        0x50
        0x56
        0x5b
        0x11
        0x53
        0x50
        0x5c
        0x5e
        0x4b
        0x56
        0x50
        0x51
        0x13
        0x5c
        0x51
        0x11
        0x54
        0x4a
        0x48
        0x50
        0x11
        0x4f
        0x53
        0x5e
        0x46
        0x5a
        0x4d
    .end array-data

    :array_2
    .array-data 4
        0x5c
        0x50
        0x52
        0x11
        0x4b
        0x5a
        0x51
        0x5c
        0x5a
        0x51
        0x4b
        0x11
        0x52
        0x4b
        0x4b
        0x13
        0x5c
        0x50
        0x52
        0x11
        0x4e
        0x56
        0x46
        0x56
        0x11
        0x49
        0x56
        0x5b
        0x5a
        0x50
        0x13
        0x5c
        0x50
        0x52
        0x11
        0x58
        0x50
        0x50
        0x58
        0x53
        0x5a
        0x11
        0x5e
        0x51
        0x5b
        0x4d
        0x50
        0x56
        0x5b
        0x11
        0x48
        0x5a
        0x5d
        0x49
        0x56
        0x5a
        0x48
        0x13
        0x5c
        0x50
        0x52
        0x11
        0x4b
        0x5a
        0x51
        0x5c
        0x5a
        0x51
        0x4b
        0x11
        0x54
        0x5e
        0x4d
        0x5e
        0x50
        0x54
        0x5a
        0x13
        0x5c
        0x4b
        0x4d
        0x56
        0x4f
        0x11
        0x5e
        0x51
        0x5b
        0x4d
        0x50
        0x56
        0x5b
        0x11
        0x49
        0x56
        0x5a
        0x48
        0x13
        0x5c
        0x50
        0x52
        0x11
        0x58
        0x50
        0x50
        0x58
        0x53
        0x5a
        0x11
        0x5e
        0x51
        0x5b
        0x4d
        0x50
        0x56
        0x5b
        0x11
        0x58
        0x4c
        0x59
        0x13
        0x5c
        0x50
        0x52
        0x11
        0x5d
        0x5e
        0x56
        0x5b
        0x4a
        0x11
        0x51
        0x5a
        0x4b
        0x5b
        0x56
        0x4c
        0x54
        0x13
        0x5c
        0x50
        0x52
        0x11
        0x4b
        0x5a
        0x51
        0x5c
        0x5a
        0x51
        0x4b
        0x11
        0x5e
        0x51
        0x5b
        0x4d
        0x50
        0x56
        0x5b
        0x4e
        0x4e
        0x52
        0x5e
        0x56
        0x53
        0x13
        0x5c
        0x50
        0x52
        0x11
        0x5e
        0x51
        0x5b
        0x4d
        0x50
        0x56
        0x5b
        0x11
        0x53
        0x50
        0x5c
        0x5e
        0x4b
        0x56
        0x50
        0x51
        0x11
        0x59
        0x4a
        0x4c
        0x5a
        0x5b
        0x13
        0x50
        0x4d
        0x58
        0x11
        0x5c
        0x50
        0x5b
        0x5a
        0x5e
        0x4a
        0x4d
        0x50
        0x4d
        0x5e
        0x11
        0x5d
        0x53
        0x4a
        0x5a
        0x4b
        0x50
        0x50
        0x4b
        0x57
        0x13
        0x5c
        0x50
        0x52
        0x11
        0x52
        0x4b
        0x11
        0x52
        0x4b
        0x47
        0x47
        0x11
        0x52
        0x4b
        0x47
        0x47
        0x13
        0x5c
        0x50
        0x52
        0x11
        0x55
        0x56
        0x51
        0x58
        0x5b
        0x50
        0x51
        0x58
        0x11
        0x5e
        0x4f
        0x4f
        0x11
        0x52
        0x5e
        0x53
        0x53
        0x13
        0x5c
        0x50
        0x52
        0x11
        0x4e
        0x4a
        0x5e
        0x53
        0x5c
        0x50
        0x52
        0x52
        0x11
        0x56
        0x51
        0x4b
        0x5a
        0x4d
        0x59
        0x5e
        0x5c
        0x5a
        0x4f
        0x5a
        0x4d
        0x52
        0x56
        0x4c
        0x4c
        0x56
        0x50
        0x51
        0x4c
        0x13
        0x5c
        0x50
        0x52
        0x11
        0x5d
        0x5e
        0x56
        0x5b
        0x4a
        0x11
        0x5e
        0x4f
        0x4f
        0x4c
        0x5a
        0x5e
        0x4d
        0x5c
        0x57
        0x13
        0x5c
        0x50
        0x52
        0x11
        0x4b
        0x5a
        0x51
        0x5c
        0x5a
        0x51
        0x4b
        0x11
        0x48
        0x56
        0x59
        0x56
        0x52
        0x5e
        0x51
        0x5e
        0x58
        0x5a
        0x4d
        0x13
        0x5c
        0x50
        0x52
        0x11
        0x5d
        0x5e
        0x56
        0x5b
        0x4a
        0x11
        0x57
        0x5e
        0x50
        0x54
        0x5e
        0x51
        0x13
        0x5c
        0x50
        0x52
        0x11
        0x49
        0x56
        0x49
        0x50
        0x11
        0x5a
        0x5e
        0x4c
        0x46
        0x4c
        0x57
        0x5e
        0x4d
        0x5a
        0x13
        0x5c
        0x50
        0x52
        0x11
        0x4b
        0x5e
        0x50
        0x5d
        0x5e
        0x50
        0x11
        0x4b
        0x5e
        0x50
        0x5d
        0x5e
        0x50
        0x13
        0x5c
        0x50
        0x52
        0x11
        0x5c
        0x50
        0x53
        0x50
        0x4d
        0x50
        0x4c
        0x11
        0x48
        0x5a
        0x5e
        0x4b
        0x57
        0x5a
        0x4d
        0x13
        0x50
        0x4d
        0x58
        0x11
        0x4c
        0x56
        0x52
        0x5e
        0x53
        0x53
        0x56
        0x5e
        0x51
        0x5c
        0x5a
        0x11
        0x50
        0x4f
        0x5a
        0x51
        0x52
        0x50
        0x5d
        0x56
        0x53
        0x5a
        0x5e
        0x4f
        0x56
        0x11
        0x4c
        0x5a
        0x4d
        0x49
        0x56
        0x5c
        0x5a
    .end array-data

    :array_3
    .array-data 4
        0x5c
        0x50
        0x52
        0x11
        0x4e
        0x4a
        0x5e
        0x53
        0x5c
        0x50
        0x52
        0x52
        0x11
        0x53
        0x50
        0x5c
        0x5e
        0x4b
        0x56
        0x50
        0x51
        0x13
        0x5c
        0x50
        0x52
        0x11
        0x52
        0x5a
        0x5b
        0x56
        0x5e
        0x4b
        0x5a
        0x54
        0x11
        0x5d
        0x5e
        0x4b
        0x4b
        0x5a
        0x4d
        0x46
        0x48
        0x5e
        0x4d
        0x51
        0x56
        0x51
        0x58
        0x13
        0x5c
        0x50
        0x52
        0x11
        0x5d
        0x5e
        0x56
        0x5b
        0x4a
        0x11
        0x7d
        0x5e
        0x56
        0x5b
        0x4a
        0x72
        0x5e
        0x4f
        0x13
        0x5c
        0x50
        0x52
        0x11
        0x4b
        0x5a
        0x51
        0x5c
        0x5a
        0x51
        0x4b
        0x11
        0x4e
        0x4e
        0x52
        0x4a
        0x4c
        0x56
        0x5c
        0x13
        0x5c
        0x50
        0x52
        0x11
        0x4c
        0x49
        0x50
        0x47
        0x11
        0x4f
        0x56
        0x5c
        0x50
        0x13
        0x5c
        0x50
        0x52
        0x11
        0x5d
        0x5d
        0x54
        0x11
        0x56
        0x4e
        0x50
        0x50
        0x11
        0x59
        0x5a
        0x5a
        0x5b
        0x5d
        0x5e
        0x5c
        0x54
        0x13
        0x5c
        0x50
        0x52
        0x11
        0x46
        0x50
        0x4a
        0x54
        0x4a
        0x11
        0x4f
        0x57
        0x50
        0x51
        0x5a
        0x13
        0x5c
        0x50
        0x52
        0x11
        0x4b
        0x5a
        0x51
        0x5c
        0x5a
        0x51
        0x4b
        0x11
        0x4e
        0x4e
        0x4f
        0x56
        0x52
        0x4c
        0x5a
        0x5c
        0x4a
        0x4d
        0x5a
        0x13
        0x5c
        0x50
        0x52
        0x11
        0x5d
        0x5e
        0x56
        0x5b
        0x4a
        0x11
        0x4c
        0x5a
        0x5e
        0x4d
        0x5c
        0x57
        0x5d
        0x50
        0x47
        0x13
        0x5c
        0x50
        0x52
        0x11
        0x4c
        0x5e
        0x51
        0x54
        0x4a
        0x5e
        0x56
        0x11
        0x52
        0x5a
        0x56
        0x4b
        0x4a
        0x5e
        0x51
        0x13
        0x5c
        0x50
        0x52
        0x11
        0x4e
        0x4a
        0x5e
        0x53
        0x5c
        0x50
        0x52
        0x52
        0x11
        0x4c
        0x57
        0x4a
        0x4b
        0x5b
        0x50
        0x48
        0x51
        0x53
        0x56
        0x4c
        0x4b
        0x51
        0x5a
        0x4d
        0x13
        0x5c
        0x50
        0x52
        0x11
        0x4e
        0x56
        0x57
        0x50
        0x50
        0xc
        0x9
        0xf
        0x11
        0x52
        0x50
        0x5d
        0x56
        0x53
        0x5a
        0x4c
        0x5e
        0x59
        0x5a
        0x13
        0x5c
        0x50
        0x52
        0x11
        0x56
        0x59
        0x53
        0x46
        0x4b
        0x5a
        0x54
        0x11
        0x4c
        0x4f
        0x5a
        0x5a
        0x5c
        0x57
        0x5c
        0x53
        0x50
        0x4a
        0x5b
        0x13
        0x5c
        0x50
        0x52
        0x11
        0x5a
        0x58
        0x11
        0x5e
        0x51
        0x5b
        0x4d
        0x50
        0x56
        0x5b
        0x11
        0x7e
        0x53
        0x56
        0x4f
        0x5e
        0x46
        0x78
        0x4f
        0x57
        0x50
        0x51
        0x5a
        0x13
        0x5c
        0x50
        0x52
        0x11
        0x58
        0x50
        0x50
        0x58
        0x53
        0x5a
        0x11
        0x5e
        0x51
        0x5b
        0x4d
        0x50
        0x56
        0x5b
        0x11
        0x4c
        0x46
        0x51
        0x5c
        0x5e
        0x5b
        0x5e
        0x4f
        0x4b
        0x5a
        0x4d
        0x4c
        0x11
        0x5c
        0x50
        0x51
        0x4b
        0x5e
        0x5c
        0x4b
        0x4c
        0x13
        0x5c
        0x50
        0x52
        0x11
        0x58
        0x50
        0x50
        0x58
        0x53
        0x5a
        0x11
        0x5e
        0x51
        0x5b
        0x4d
        0x50
        0x56
        0x5b
        0x11
        0x4c
        0x46
        0x51
        0x5c
        0x5e
        0x5b
        0x5e
        0x4f
        0x4b
        0x5a
        0x4d
        0x4c
        0x11
        0x5c
        0x5e
        0x53
        0x5a
        0x51
        0x5b
        0x5e
        0x4d
        0x13
        0x5c
        0x50
        0x52
        0x11
        0x5d
        0x5e
        0x50
        0x59
        0x5a
        0x51
        0x58
        0x11
        0x52
        0x55
        0x11
        0x49
        0x56
        0x5b
        0x5a
        0x50
        0x4f
        0x53
        0x4a
        0x58
        0x56
        0x51
        0x13
        0x5c
        0x50
        0x52
        0x11
        0x4b
        0x5a
        0x51
        0x5c
        0x5a
        0x51
        0x4b
        0x11
        0x52
        0x52
        0x13
        0x5c
        0x50
        0x52
        0x11
        0x52
        0x5a
        0x5b
        0x56
        0x5e
        0x4b
        0x5a
        0x54
        0x11
        0x4b
        0x57
        0x5a
        0x4d
        0x52
        0x5e
        0x53
        0x52
        0x5e
        0x51
        0x5e
        0x58
        0x5a
        0x4d
        0x13
        0x5c
        0x50
        0x52
        0x11
        0x4c
        0x5b
        0x4a
        0x11
        0x5b
        0x56
        0x5b
        0x56
        0x11
        0x4f
        0x4c
        0x51
        0x58
        0x5a
        0x4d
    .end array-data

    :array_4
    .array-data 4
        0x5c
        0x50
        0x52
        0x11
        0x4c
        0x4b
        0x50
        0x4d
        0x52
        0x11
        0x4c
        0x4b
        0x50
        0x4d
        0x52
        0x58
        0x5e
        0x52
        0x5a
        0x13
        0x5c
        0x50
        0x52
        0x11
        0x4c
        0x4c
        0x11
        0x5e
        0x51
        0x5b
        0x4d
        0x50
        0x56
        0x5b
        0x11
        0x4a
        0x58
        0x5c
        0x11
        0x53
        0x56
        0x49
        0x5a
        0x13
        0x50
        0x4d
        0x58
        0x11
        0x5c
        0x50
        0x5b
        0x5a
        0x5e
        0x4a
        0x4d
        0x50
        0x4d
        0x5e
        0x11
        0x56
        0x52
        0x4c
        0x13
        0x5c
        0x50
        0x52
        0x11
        0x4b
        0x52
        0x5e
        0x53
        0x53
        0x11
        0x48
        0x56
        0x4d
        0x5a
        0x53
        0x5a
        0x4c
        0x4c
        0x13
        0x5c
        0x50
        0x52
        0x11
        0x5d
        0x59
        0x58
        0x5e
        0x52
        0x5a
        0x11
        0x5e
        0x4f
        0x4f
        0x13
        0x5c
        0x50
        0x52
        0x11
        0x4e
        0x4a
        0x56
        0x5c
        0x56
        0x51
        0x5c
        0x11
        0x5c
        0x51
        0x5a
        0x11
        0x7c
        0x71
        0x7a
        0x6c
        0x5a
        0x4d
        0x49
        0x56
        0x5c
        0x5a
        0x13
        0x5c
        0x50
        0x52
        0x11
        0x5d
        0x5e
        0x56
        0x5b
        0x4a
        0x11
        0x52
        0x5e
        0x4f
        0x11
        0x53
        0x50
        0x5c
        0x5e
        0x4b
        0x56
        0x50
        0x51
        0x13
        0x5c
        0x50
        0x52
        0x11
        0x4c
        0x4c
        0x11
        0x5e
        0x51
        0x5b
        0x4d
        0x50
        0x56
        0x5b
        0x11
        0x5e
        0x4d
        0x4b
        0x56
        0x5c
        0x53
        0x5a
        0x11
        0x53
        0x56
        0x4b
        0x5a
        0x13
        0x5c
        0x50
        0x52
        0x11
        0x4c
        0x51
        0x5b
        0x5e
        0x11
        0x48
        0x56
        0x59
        0x56
        0x53
        0x50
        0x5c
        0x5e
        0x4b
        0x56
        0x51
        0x58
        0x13
        0x5c
        0x50
        0x52
        0x11
        0x4c
        0x50
        0x57
        0x4a
        0x11
        0x56
        0x51
        0x4f
        0x4a
        0x4b
        0x52
        0x5a
        0x4b
        0x57
        0x50
        0x5b
        0x11
        0x4c
        0x50
        0x58
        0x50
        0x4a
        0x13
        0x5c
        0x50
        0x52
        0x11
        0x4b
        0x5a
        0x51
        0x5c
        0x5a
        0x51
        0x4b
        0x11
        0x4b
        0x52
        0x58
        0x4f
        0x11
        0x4c
        0x58
        0x5e
        0x52
        0x5a
        0x13
        0x5c
        0x50
        0x52
        0x11
        0x4e
        0x4a
        0x5e
        0x53
        0x5c
        0x50
        0x52
        0x52
        0x11
        0x4e
        0x5c
        0x50
        0x52
        0x60
        0x4e
        0x52
        0x56
        0x13
        0x5c
        0x50
        0x52
        0x11
        0x52
        0x5a
        0x5b
        0x56
        0x5e
        0x4b
        0x5a
        0x54
        0x11
        0x46
        0x58
        0x4f
        0x4c
        0x13
        0x5c
        0x50
        0x52
        0x11
        0x4b
        0x5a
        0x51
        0x5c
        0x5a
        0x51
        0x4b
        0x11
        0x4e
        0x4e
        0x53
        0x56
        0x49
        0x5a
        0x13
        0x5c
        0x50
        0x52
        0x11
        0x4c
        0x4c
        0x11
        0x5e
        0x51
        0x5b
        0x4d
        0x50
        0x56
        0x5b
        0x11
        0x5e
        0x4d
        0x4b
        0x56
        0x5c
        0x53
        0x5a
        0x11
        0x51
        0x5a
        0x48
        0x4c
        0x13
        0x5c
        0x50
        0x52
        0x11
        0x5c
        0x57
        0x56
        0x51
        0x5e
        0x52
        0x48
        0x50
        0x4d
        0x53
        0x5b
        0x11
        0x52
        0x5e
        0x56
        0x51
        0x13
        0x5c
        0x50
        0x52
        0x11
        0x58
        0x50
        0x50
        0x58
        0x53
        0x5a
        0x11
        0x5e
        0x51
        0x5b
        0x4d
        0x50
        0x56
        0x5b
        0x11
        0x58
        0x4c
        0x59
        0x11
        0x53
        0x50
        0x58
        0x56
        0x51
        0x13
        0x5c
        0x50
        0x52
        0x11
        0x52
        0x5a
        0x56
        0x4b
        0x4a
        0x11
        0x52
        0x5a
        0x56
        0x46
        0x5e
        0x51
        0x5c
        0x5e
        0x52
        0x5a
        0x4d
        0x5e
        0x13
        0x5c
        0x50
        0x52
        0x11
        0x4c
        0x52
        0x56
        0x53
        0x5a
        0x11
        0x58
        0x56
        0x59
        0x52
        0x5e
        0x54
        0x5a
        0x4d
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private decode([I)Ljava/lang/String;
    .locals 5

    .line 248
    array-length v0, p1

    .line 249
    new-array v1, v0, [C

    const/16 v2, 0x3f

    .line 250
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 252
    aget v4, p1, v3

    xor-int/2addr v4, v2

    int-to-char v4, v4

    aput-char v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 254
    :cond_0
    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getTargetSystemPkgList([I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 184
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 186
    :try_start_0
    invoke-direct {p0, p1}, Lcom/mob/tools/utils/SmltHelper;->decode([I)Ljava/lang/String;

    move-result-object p1

    const-string v1, ","

    .line 187
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 188
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 189
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 192
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_0
    return-object v0
.end method

.method private invokeRuntimeExec([Ljava/lang/String;)Ljava/io/InputStream;
    .locals 4

    const/16 v0, 0x2a

    .line 259
    :try_start_0
    invoke-static {v0}, Lcom/mob/tools/utils/Strings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/ReflectHelper;->importClass(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2b

    .line 260
    invoke-static {v1}, Lcom/mob/tools/utils/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/mob/tools/utils/ReflectHelper;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x2c

    .line 261
    invoke-static {v1}, Lcom/mob/tools/utils/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    invoke-static {v0, v1, v3}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/16 v0, 0x2d

    .line 262
    invoke-static {v0}, Lcom/mob/tools/utils/Strings;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 265
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method private readCpuInfo()Ljava/lang/String;
    .locals 5

    const/4 v0, 0x2

    :try_start_0
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "/system/bin/cat"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x29

    .line 208
    invoke-static {v2}, Lcom/mob/tools/utils/Strings;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/mob/tools/utils/SmltHelper;->invokeRuntimeExec([Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 210
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 211
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    const-string v4, "utf-8"

    invoke-direct {v3, v0, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 213
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 215
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 217
    :cond_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 218
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 223
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method private zeroCount(Ljava/lang/String;)I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 142
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 143
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-ne v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method


# virtual methods
.method public checkBaseband(Landroid/content/Context;)I
    .locals 2

    const/4 v0, 0x0

    .line 35
    :try_start_0
    invoke-static {p1}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mob/tools/utils/DeviceHelper;->getBaseband()Ljava/lang/String;

    move-result-object p1

    .line 36
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "1.0.0.0"

    .line 37
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 41
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return v0
.end method

.method public checkBluetooth(Landroid/content/Context;)I
    .locals 3

    const/4 v0, 0x0

    .line 109
    :try_start_0
    invoke-static {p1}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v1

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v2}, Lcom/mob/tools/utils/DeviceHelper;->checkPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 110
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 111
    invoke-static {p1}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mob/tools/utils/DeviceHelper;->getBluetoothName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 112
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 117
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return v0
.end method

.method public checkBoard(Landroid/content/Context;)I
    .locals 3

    const/4 v0, 0x0

    .line 49
    :try_start_0
    invoke-static {p1}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mob/tools/utils/DeviceHelper;->getBoardFromSysProperty()Ljava/lang/String;

    move-result-object p1

    .line 50
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android"

    .line 51
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-gt v1, v2, :cond_0

    const-string v1, "goldfish"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-le p1, v2, :cond_1

    :cond_0
    const/4 p1, 0x1

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 55
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return v0
.end method

.method public checkCgroup()I
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "cat"

    const-string v2, "/proc/self/cgroup"

    .line 91
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mob/tools/utils/SmltHelper;->invokeRuntimeExec([Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 93
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 94
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 95
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 100
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return v0
.end method

.method public checkCommonApp(Landroid/content/Context;)I
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 155
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 156
    sget-object v3, Lcom/mob/tools/utils/SmltHelper;->applist1:[I

    invoke-direct {p0, v3}, Lcom/mob/tools/utils/SmltHelper;->getTargetSystemPkgList([I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 157
    sget-object v3, Lcom/mob/tools/utils/SmltHelper;->applist2:[I

    invoke-direct {p0, v3}, Lcom/mob/tools/utils/SmltHelper;->getTargetSystemPkgList([I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 158
    sget-object v3, Lcom/mob/tools/utils/SmltHelper;->applist3:[I

    invoke-direct {p0, v3}, Lcom/mob/tools/utils/SmltHelper;->getTargetSystemPkgList([I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 159
    sget-object v3, Lcom/mob/tools/utils/SmltHelper;->applist4:[I

    invoke-direct {p0, v3}, Lcom/mob/tools/utils/SmltHelper;->getTargetSystemPkgList([I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 160
    sget-object v3, Lcom/mob/tools/utils/SmltHelper;->applist5:[I

    invoke-direct {p0, v3}, Lcom/mob/tools/utils/SmltHelper;->getTargetSystemPkgList([I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 161
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v3, 0x0

    :cond_0
    :goto_0
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v5, 0x0

    .line 164
    :try_start_2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6, v4, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    nop

    :goto_1
    if-eqz v5, :cond_0

    .line 167
    :try_start_3
    iget-object v4, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    and-int/2addr v4, v0

    if-nez v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_1
    nop

    goto :goto_2

    :catchall_2
    const/4 v3, 0x0

    :cond_1
    :goto_2
    if-nez v3, :cond_2

    goto :goto_3

    :cond_2
    const/4 v0, 0x0

    :goto_3
    return v0
.end method

.method public checkCpuInfo()I
    .locals 3

    .line 199
    invoke-direct {p0}, Lcom/mob/tools/utils/SmltHelper;->readCpuInfo()Ljava/lang/String;

    move-result-object v0

    const-string v1, "intel"

    .line 200
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-gt v1, v2, :cond_1

    const-string v1, "amd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-le v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public checkFlavor(Landroid/content/Context;)I
    .locals 2

    const/4 v0, 0x0

    .line 78
    :try_start_0
    invoke-static {p1}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mob/tools/utils/DeviceHelper;->getFlavor()Ljava/lang/String;

    move-result-object p1

    const-string v1, "vbox"

    .line 79
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, -0x1

    if-le p1, v1, :cond_0

    const/4 p1, 0x1

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 83
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return v0
.end method

.method public checkImei(Landroid/content/Context;)I
    .locals 2

    .line 125
    :try_start_0
    invoke-static {p1}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v0

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/DeviceHelper;->checkPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 128
    :cond_0
    invoke-static {p1}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mob/tools/utils/DeviceHelper;->getIMEI()Ljava/lang/String;

    move-result-object p1

    .line 129
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "*"

    .line 130
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/mob/tools/utils/SmltHelper;->zeroCount(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p1, :cond_3

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    const/4 p1, -0x1

    return p1

    :catchall_0
    move-exception p1

    .line 135
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public checkPlatform(Landroid/content/Context;)I
    .locals 3

    const/4 v0, 0x0

    .line 63
    :try_start_0
    invoke-static {p1}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mob/tools/utils/DeviceHelper;->getBoardPlatform()Ljava/lang/String;

    move-result-object p1

    .line 64
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android"

    .line 65
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-gt v1, v2, :cond_0

    const-string v1, "sdk_gphone"

    .line 66
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-le p1, v2, :cond_1

    :cond_0
    const/4 p1, 0x1

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 70
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return v0
.end method

.method public checkSensor(Landroid/content/Context;)I
    .locals 6

    const-string v0, "sensor"

    .line 229
    sget-object v1, Lcom/mob/tools/utils/BVS;->HAS_SS:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 230
    sget-object p1, Lcom/mob/tools/utils/BVS;->HAS_SS:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_0
    const/4 v1, 0x0

    .line 234
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    .line 235
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/SensorManager;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v4

    .line 236
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    if-nez v4, :cond_1

    if-nez p1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 241
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 243
    :cond_1
    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sput-object p1, Lcom/mob/tools/utils/BVS;->HAS_SS:Ljava/lang/Integer;

    return v1
.end method
