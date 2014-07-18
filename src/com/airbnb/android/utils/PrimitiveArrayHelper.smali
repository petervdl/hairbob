.class public Lcom/airbnb/android/utils/PrimitiveArrayHelper;
.super Ljava/util/AbstractList;
.source "PrimitiveArrayHelper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final data:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>([Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .prologue
    .line 12
    .local p0, "this":Lcom/airbnb/android/utils/PrimitiveArrayHelper;, "Lcom/airbnb/android/utils/PrimitiveArrayHelper<TT;>;"
    .local p1, "data":[Ljava/lang/Object;, "[TT;"
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/airbnb/android/utils/PrimitiveArrayHelper;->data:[Ljava/lang/Object;

    .line 14
    return-void
.end method

.method private static toBoxedArray(Ljava/lang/Class;Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 6
    .param p1, "components"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Object;",
            ")[TT;"
        }
    .end annotation

    .prologue
    .line 33
    .local p0, "boxClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-eqz p1, :cond_17

    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    .line 34
    .local v1, "length":I
    :goto_6
    invoke-static {p0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    .line 36
    .local v2, "res":Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b
    if-ge v0, v1, :cond_19

    .line 37
    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v0, v3}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 36
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 33
    .end local v0    # "i":I
    .end local v1    # "length":I
    .end local v2    # "res":Ljava/lang/Object;
    :cond_17
    const/4 v1, 0x0

    goto :goto_6

    .line 40
    .restart local v0    # "i":I
    .restart local v1    # "length":I
    .restart local v2    # "res":Ljava/lang/Object;
    :cond_19
    check-cast v2, [Ljava/lang/Object;

    .end local v2    # "res":Ljava/lang/Object;
    check-cast v2, [Ljava/lang/Object;

    return-object v2
.end method

.method public static varargs toCharacterList([C)Ljava/util/List;
    .registers 3
    .param p0, "data"    # [C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([C)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 21
    new-instance v0, Lcom/airbnb/android/utils/PrimitiveArrayHelper;

    const-class v1, Ljava/lang/Character;

    invoke-static {v1, p0}, Lcom/airbnb/android/utils/PrimitiveArrayHelper;->toBoxedArray(Ljava/lang/Class;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/airbnb/android/utils/PrimitiveArrayHelper;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public static varargs toDoubleList([D)Ljava/util/List;
    .registers 3
    .param p0, "data"    # [D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([D)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 25
    new-instance v0, Lcom/airbnb/android/utils/PrimitiveArrayHelper;

    const-class v1, Ljava/lang/Double;

    invoke-static {v1, p0}, Lcom/airbnb/android/utils/PrimitiveArrayHelper;->toBoxedArray(Ljava/lang/Class;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/airbnb/android/utils/PrimitiveArrayHelper;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public static varargs toIntegerList([I)Ljava/util/List;
    .registers 3
    .param p0, "data"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([I)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 17
    new-instance v0, Lcom/airbnb/android/utils/PrimitiveArrayHelper;

    const-class v1, Ljava/lang/Integer;

    invoke-static {v1, p0}, Lcom/airbnb/android/utils/PrimitiveArrayHelper;->toBoxedArray(Ljava/lang/Class;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/airbnb/android/utils/PrimitiveArrayHelper;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public static varargs toLongList([J)Ljava/util/List;
    .registers 3
    .param p0, "data"    # [J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([J)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 29
    new-instance v0, Lcom/airbnb/android/utils/PrimitiveArrayHelper;

    const-class v1, Ljava/lang/Long;

    invoke-static {v1, p0}, Lcom/airbnb/android/utils/PrimitiveArrayHelper;->toBoxedArray(Ljava/lang/Class;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/airbnb/android/utils/PrimitiveArrayHelper;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .registers 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, "this":Lcom/airbnb/android/utils/PrimitiveArrayHelper;, "Lcom/airbnb/android/utils/PrimitiveArrayHelper<TT;>;"
    iget-object v0, p0, Lcom/airbnb/android/utils/PrimitiveArrayHelper;->data:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 50
    .local p0, "this":Lcom/airbnb/android/utils/PrimitiveArrayHelper;, "Lcom/airbnb/android/utils/PrimitiveArrayHelper<TT;>;"
    iget-object v0, p0, Lcom/airbnb/android/utils/PrimitiveArrayHelper;->data:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method
