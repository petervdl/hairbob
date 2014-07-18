.class final enum Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment$FeedbackField;
.super Ljava/lang/Enum;
.source "ReviewFeedbackFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "FeedbackField"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment$FeedbackField;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment$FeedbackField;

.field public static final enum Private:Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment$FeedbackField;

.field public static final enum Public:Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment$FeedbackField;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 58
    new-instance v0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment$FeedbackField;

    const-string/jumbo v1, "Public"

    invoke-direct {v0, v1, v2}, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment$FeedbackField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment$FeedbackField;->Public:Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment$FeedbackField;

    .line 59
    new-instance v0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment$FeedbackField;

    const-string/jumbo v1, "Private"

    invoke-direct {v0, v1, v3}, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment$FeedbackField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment$FeedbackField;->Private:Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment$FeedbackField;

    .line 57
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment$FeedbackField;

    sget-object v1, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment$FeedbackField;->Public:Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment$FeedbackField;

    aput-object v1, v0, v2

    sget-object v1, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment$FeedbackField;->Private:Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment$FeedbackField;

    aput-object v1, v0, v3

    sput-object v0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment$FeedbackField;->$VALUES:[Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment$FeedbackField;

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
    .line 57
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment$FeedbackField;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 57
    const-class v0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment$FeedbackField;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment$FeedbackField;

    return-object v0
.end method

.method public static values()[Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment$FeedbackField;
    .registers 1

    .prologue
    .line 57
    sget-object v0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment$FeedbackField;->$VALUES:[Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment$FeedbackField;

    invoke-virtual {v0}, [Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment$FeedbackField;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment$FeedbackField;

    return-object v0
.end method
