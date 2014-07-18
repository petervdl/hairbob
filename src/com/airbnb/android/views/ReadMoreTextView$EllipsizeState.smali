.class final enum Lcom/airbnb/android/views/ReadMoreTextView$EllipsizeState;
.super Ljava/lang/Enum;
.source "ReadMoreTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/views/ReadMoreTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "EllipsizeState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/airbnb/android/views/ReadMoreTextView$EllipsizeState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/airbnb/android/views/ReadMoreTextView$EllipsizeState;

.field public static final enum ELLIPSIZING_DONE:Lcom/airbnb/android/views/ReadMoreTextView$EllipsizeState;

.field public static final enum FIRST_PASS_SCHEDULED:Lcom/airbnb/android/views/ReadMoreTextView$EllipsizeState;

.field public static final enum NEED_FIRST_PASS:Lcom/airbnb/android/views/ReadMoreTextView$EllipsizeState;

.field public static final enum NEED_SECOND_PASS:Lcom/airbnb/android/views/ReadMoreTextView$EllipsizeState;

.field public static final enum SECOND_PASS_DONE:Lcom/airbnb/android/views/ReadMoreTextView$EllipsizeState;

.field public static final enum SECOND_PASS_SCHEDULED:Lcom/airbnb/android/views/ReadMoreTextView$EllipsizeState;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 32
    new-instance v0, Lcom/airbnb/android/views/ReadMoreTextView$EllipsizeState;

    const-string/jumbo v1, "NEED_FIRST_PASS"

    invoke-direct {v0, v1, v3}, Lcom/airbnb/android/views/ReadMoreTextView$EllipsizeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/views/ReadMoreTextView$EllipsizeState;->NEED_FIRST_PASS:Lcom/airbnb/android/views/ReadMoreTextView$EllipsizeState;

    .line 33
    new-instance v0, Lcom/airbnb/android/views/ReadMoreTextView$EllipsizeState;

    const-string/jumbo v1, "FIRST_PASS_SCHEDULED"

    invoke-direct {v0, v1, v4}, Lcom/airbnb/android/views/ReadMoreTextView$EllipsizeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/views/ReadMoreTextView$EllipsizeState;->FIRST_PASS_SCHEDULED:Lcom/airbnb/android/views/ReadMoreTextView$EllipsizeState;

    .line 34
    new-instance v0, Lcom/airbnb/android/views/ReadMoreTextView$EllipsizeState;

    const-string/jumbo v1, "NEED_SECOND_PASS"

    invoke-direct {v0, v1, v5}, Lcom/airbnb/android/views/ReadMoreTextView$EllipsizeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/views/ReadMoreTextView$EllipsizeState;->NEED_SECOND_PASS:Lcom/airbnb/android/views/ReadMoreTextView$EllipsizeState;

    .line 35
    new-instance v0, Lcom/airbnb/android/views/ReadMoreTextView$EllipsizeState;

    const-string/jumbo v1, "SECOND_PASS_SCHEDULED"

    invoke-direct {v0, v1, v6}, Lcom/airbnb/android/views/ReadMoreTextView$EllipsizeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/views/ReadMoreTextView$EllipsizeState;->SECOND_PASS_SCHEDULED:Lcom/airbnb/android/views/ReadMoreTextView$EllipsizeState;

    .line 36
    new-instance v0, Lcom/airbnb/android/views/ReadMoreTextView$EllipsizeState;

    const-string/jumbo v1, "SECOND_PASS_DONE"

    invoke-direct {v0, v1, v7}, Lcom/airbnb/android/views/ReadMoreTextView$EllipsizeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/views/ReadMoreTextView$EllipsizeState;->SECOND_PASS_DONE:Lcom/airbnb/android/views/ReadMoreTextView$EllipsizeState;

    .line 37
    new-instance v0, Lcom/airbnb/android/views/ReadMoreTextView$EllipsizeState;

    const-string/jumbo v1, "ELLIPSIZING_DONE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/airbnb/android/views/ReadMoreTextView$EllipsizeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/views/ReadMoreTextView$EllipsizeState;->ELLIPSIZING_DONE:Lcom/airbnb/android/views/ReadMoreTextView$EllipsizeState;

    .line 31
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/airbnb/android/views/ReadMoreTextView$EllipsizeState;

    sget-object v1, Lcom/airbnb/android/views/ReadMoreTextView$EllipsizeState;->NEED_FIRST_PASS:Lcom/airbnb/android/views/ReadMoreTextView$EllipsizeState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/airbnb/android/views/ReadMoreTextView$EllipsizeState;->FIRST_PASS_SCHEDULED:Lcom/airbnb/android/views/ReadMoreTextView$EllipsizeState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/airbnb/android/views/ReadMoreTextView$EllipsizeState;->NEED_SECOND_PASS:Lcom/airbnb/android/views/ReadMoreTextView$EllipsizeState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/airbnb/android/views/ReadMoreTextView$EllipsizeState;->SECOND_PASS_SCHEDULED:Lcom/airbnb/android/views/ReadMoreTextView$EllipsizeState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/airbnb/android/views/ReadMoreTextView$EllipsizeState;->SECOND_PASS_DONE:Lcom/airbnb/android/views/ReadMoreTextView$EllipsizeState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/airbnb/android/views/ReadMoreTextView$EllipsizeState;->ELLIPSIZING_DONE:Lcom/airbnb/android/views/ReadMoreTextView$EllipsizeState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/airbnb/android/views/ReadMoreTextView$EllipsizeState;->$VALUES:[Lcom/airbnb/android/views/ReadMoreTextView$EllipsizeState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/android/views/ReadMoreTextView$EllipsizeState;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 31
    const-class v0, Lcom/airbnb/android/views/ReadMoreTextView$EllipsizeState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/views/ReadMoreTextView$EllipsizeState;

    return-object v0
.end method

.method public static values()[Lcom/airbnb/android/views/ReadMoreTextView$EllipsizeState;
    .registers 1

    .prologue
    .line 31
    sget-object v0, Lcom/airbnb/android/views/ReadMoreTextView$EllipsizeState;->$VALUES:[Lcom/airbnb/android/views/ReadMoreTextView$EllipsizeState;

    invoke-virtual {v0}, [Lcom/airbnb/android/views/ReadMoreTextView$EllipsizeState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/airbnb/android/views/ReadMoreTextView$EllipsizeState;

    return-object v0
.end method
