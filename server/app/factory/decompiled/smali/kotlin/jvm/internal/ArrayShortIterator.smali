.class final Lkotlin/jvm/internal/ArrayShortIterator;
.super Lkotlin/collections/ShortIterator;
.source "ArrayIterators.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0017\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\n\n\u0000\u0008\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0008H\u0096\u0002J\u0008\u0010\t\u001a\u00020\nH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lkotlin/jvm/internal/ArrayShortIterator;",
        "Lkotlin/collections/ShortIterator;",
        "array",
        "",
        "([S)V",
        "index",
        "",
        "hasNext",
        "",
        "nextShort",
        "",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xa
    }
.end annotation


# instance fields
.field private final array:[S

.field private index:I


# direct methods
.method public constructor <init>([S)V
    .locals 4
    .param p1    # [S
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    const-string v3, "array"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    move-object v2, v0

    invoke-direct {v2}, Lkotlin/collections/ShortIterator;-><init>()V

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lkotlin/jvm/internal/ArrayShortIterator;->array:[S

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 3

    .prologue
    .line 24
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lkotlin/jvm/internal/ArrayShortIterator;->index:I

    move-object v2, v0

    iget-object v2, v2, Lkotlin/jvm/internal/ArrayShortIterator;->array:[S

    array-length v2, v2

    if-ge v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public nextShort()S
    .locals 8

    .prologue
    .line 25
    move-object v0, p0

    nop

    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lkotlin/jvm/internal/ArrayShortIterator;->array:[S

    move-object v4, v0

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    iget v5, v5, Lkotlin/jvm/internal/ArrayShortIterator;->index:I

    move v7, v5

    move v5, v7

    move v6, v7

    move v1, v6

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lkotlin/jvm/internal/ArrayShortIterator;->index:I

    move v4, v1

    aget-short v3, v3, v4
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v3

    move v3, v1

    move v0, v3

    return v0

    :catch_0
    move-exception v3

    move-object v2, v3

    move-object v3, v0

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget v4, v4, Lkotlin/jvm/internal/ArrayShortIterator;->index:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    iput v4, v3, Lkotlin/jvm/internal/ArrayShortIterator;->index:I

    new-instance v3, Ljava/util/NoSuchElementException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v2

    invoke-virtual {v5}, Ljava/lang/ArrayIndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Throwable;

    throw v3
.end method
