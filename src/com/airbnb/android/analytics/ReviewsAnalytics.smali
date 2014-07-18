.class public Lcom/airbnb/android/analytics/ReviewsAnalytics;
.super Ljava/lang/Object;
.source "ReviewsAnalytics.java"


# static fields
.field private static final ACTION_DISMISS:Ljava/lang/String; = "dismiss"

.field private static final ACTION_EDIT_FEEDBACK:Ljava/lang/String; = "edit_review_click"

.field private static final ACTION_EDIT_RATING:Ljava/lang/String; = "edit_rating_click"

.field private static final ACTION_EDIT_RECOMMEND:Ljava/lang/String; = "edit_would_recommend_click"

.field private static final ACTION_IMPRESSION:Ljava/lang/String; = "impression"

.field private static final ACTION_SUBMIT:Ljava/lang/String; = "submit"

.field private static final ACTION_SUBMIT_REVIEW:Ljava/lang/String; = "submit_review_click"

.field private static final ACTION_VIEW_REVIEW:Ljava/lang/String; = "view_review"

.field public static final EVENT_REVIEWS:Ljava/lang/String; = "reviews"

.field public static final FIELD_ACTION:Ljava/lang/String; = "action"

.field public static final FIELD_FORMAT:Ljava/lang/String; = "format"

.field public static final FIELD_PAGE:Ljava/lang/String; = "page"

.field public static final FIELD_PARAMS:Ljava/lang/String; = "params"

.field public static final FIELD_PLATFORM:Ljava/lang/String; = "platform"

.field public static final FIELD_RESERVATION_ID:Ljava/lang/String; = "reservation_id"

.field public static final FIELD_REVIEW_ID:Ljava/lang/String; = "review_id"

.field public static final FIELD_ROLE:Ljava/lang/String; = "role"

.field public static final FIELD_SECTION:Ljava/lang/String; = "section"

.field private static final PAGE_DOUBLE_BLIND_FTUE:Ljava/lang/String; = "double_blind_ftue"

.field private static final PAGE_DOUBLE_BLIND_HIDDEN_DIALOG:Ljava/lang/String; = "double_blind_hidden_dialog"

.field private static final PAGE_DOUBLE_BLIND_VISIBLE_DIALOG:Ljava/lang/String; = "double_blind_visible_dialog"

.field private static final PAGE_FEEDBACK:Ljava/lang/String; = "review_feedback"

.field private static final PAGE_NPS:Ljava/lang/String; = "nps"

.field private static final PAGE_RATINGS:Ljava/lang/String; = "review_rating"

.field private static final PAGE_SUMMARY:Ljava/lang/String; = "submit_review"

.field private static final PARAM_DOUBLE_BLIND:Ljava/lang/String; = "double_blind"

.field private static final PARAM_STANDARD:Ljava/lang/String; = "standard"

.field private static final PLATFORM_ANDROID:Ljava/lang/String; = "android"

.field private static final ROLE_GUEST:Ljava/lang/String; = "guest"

.field private static final ROLE_HOST:Ljava/lang/String; = "host"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static makeReviewStrap(Lcom/airbnb/android/models/Review;Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;
    .registers 7
    .param p0, "review"    # Lcom/airbnb/android/models/Review;
    .param p1, "page"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    .line 117
    new-instance v0, Lcom/airbnb/android/utils/Strap;

    invoke-direct {v0}, Lcom/airbnb/android/utils/Strap;-><init>()V

    const-string/jumbo v1, "page"

    invoke-virtual {v0, v1, p1}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    const-string/jumbo v1, "action"

    invoke-virtual {v0, v1, p2}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "role"

    invoke-virtual {p0}, Lcom/airbnb/android/models/Review;->isGuestReviewingHost()Z

    move-result v0

    if-eqz v0, :cond_49

    const-string/jumbo v0, "guest"

    :goto_1f
    invoke-virtual {v1, v2, v0}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "format"

    invoke-virtual {p0}, Lcom/airbnb/android/models/Review;->isDoubleBlind()Z

    move-result v0

    if-eqz v0, :cond_4d

    const-string/jumbo v0, "double_blind"

    :goto_2f
    invoke-virtual {v1, v2, v0}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    const-string/jumbo v1, "review_id"

    invoke-virtual {p0}, Lcom/airbnb/android/models/Review;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;J)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    const-string/jumbo v1, "platform"

    const-string/jumbo v2, "android"

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    return-object v0

    :cond_49
    const-string/jumbo v0, "host"

    goto :goto_1f

    :cond_4d
    const-string/jumbo v0, "standard"

    goto :goto_2f
.end method

.method public static trackDismissPostDoubleBlindDialog(Lcom/airbnb/android/models/Review;)V
    .registers 5
    .param p0, "review"    # Lcom/airbnb/android/models/Review;

    .prologue
    .line 107
    const-string/jumbo v0, "reviews"

    const/4 v1, 0x1

    const-string/jumbo v2, "double_blind_visible_dialog"

    const-string/jumbo v3, "dismiss"

    invoke-static {p0, v2, v3}, Lcom/airbnb/android/analytics/ReviewsAnalytics;->makeReviewStrap(Lcom/airbnb/android/models/Review;Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 109
    return-void
.end method

.method public static trackDoubleBlindFtue(Lcom/airbnb/android/models/Review;)V
    .registers 5
    .param p0, "review"    # Lcom/airbnb/android/models/Review;

    .prologue
    .line 92
    const-string/jumbo v0, "reviews"

    const/4 v1, 0x1

    const-string/jumbo v2, "double_blind_ftue"

    const-string/jumbo v3, "impression"

    invoke-static {p0, v2, v3}, Lcom/airbnb/android/analytics/ReviewsAnalytics;->makeReviewStrap(Lcom/airbnb/android/models/Review;Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 94
    return-void
.end method

.method public static trackEditFeedback(Lcom/airbnb/android/models/Review;)V
    .registers 5
    .param p0, "review"    # Lcom/airbnb/android/models/Review;

    .prologue
    .line 67
    const-string/jumbo v0, "reviews"

    const/4 v1, 0x1

    const-string/jumbo v2, "submit_review"

    const-string/jumbo v3, "edit_review_click"

    invoke-static {p0, v2, v3}, Lcom/airbnb/android/analytics/ReviewsAnalytics;->makeReviewStrap(Lcom/airbnb/android/models/Review;Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 69
    return-void
.end method

.method public static trackEditRating(Lcom/airbnb/android/models/Review;)V
    .registers 5
    .param p0, "review"    # Lcom/airbnb/android/models/Review;

    .prologue
    .line 72
    const-string/jumbo v0, "reviews"

    const/4 v1, 0x1

    const-string/jumbo v2, "submit_review"

    const-string/jumbo v3, "edit_rating_click"

    invoke-static {p0, v2, v3}, Lcom/airbnb/android/analytics/ReviewsAnalytics;->makeReviewStrap(Lcom/airbnb/android/models/Review;Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 74
    return-void
.end method

.method public static trackEditRecommend(Lcom/airbnb/android/models/Review;)V
    .registers 5
    .param p0, "review"    # Lcom/airbnb/android/models/Review;

    .prologue
    .line 77
    const-string/jumbo v0, "reviews"

    const/4 v1, 0x1

    const-string/jumbo v2, "submit_review"

    const-string/jumbo v3, "edit_would_recommend_click"

    invoke-static {p0, v2, v3}, Lcom/airbnb/android/analytics/ReviewsAnalytics;->makeReviewStrap(Lcom/airbnb/android/models/Review;Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 79
    return-void
.end method

.method public static trackFeedbackSection(Lcom/airbnb/android/models/Review;)V
    .registers 5
    .param p0, "review"    # Lcom/airbnb/android/models/Review;

    .prologue
    .line 52
    const-string/jumbo v0, "reviews"

    const/4 v1, 0x1

    const-string/jumbo v2, "review_feedback"

    const-string/jumbo v3, "impression"

    invoke-static {p0, v2, v3}, Lcom/airbnb/android/analytics/ReviewsAnalytics;->makeReviewStrap(Lcom/airbnb/android/models/Review;Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 54
    return-void
.end method

.method public static trackPostDoubleBlindHiddenDialog(Lcom/airbnb/android/models/Review;)V
    .registers 5
    .param p0, "review"    # Lcom/airbnb/android/models/Review;

    .prologue
    .line 97
    const-string/jumbo v0, "reviews"

    const/4 v1, 0x1

    const-string/jumbo v2, "double_blind_hidden_dialog"

    const-string/jumbo v3, "impression"

    invoke-static {p0, v2, v3}, Lcom/airbnb/android/analytics/ReviewsAnalytics;->makeReviewStrap(Lcom/airbnb/android/models/Review;Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 99
    return-void
.end method

.method public static trackPostDoubleBlindVisibleDialog(Lcom/airbnb/android/models/Review;)V
    .registers 5
    .param p0, "review"    # Lcom/airbnb/android/models/Review;

    .prologue
    .line 102
    const-string/jumbo v0, "reviews"

    const/4 v1, 0x1

    const-string/jumbo v2, "double_blind_visible_dialog"

    const-string/jumbo v3, "impression"

    invoke-static {p0, v2, v3}, Lcom/airbnb/android/analytics/ReviewsAnalytics;->makeReviewStrap(Lcom/airbnb/android/models/Review;Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 104
    return-void
.end method

.method public static trackRatingSection(Lcom/airbnb/android/models/Review;)V
    .registers 5
    .param p0, "review"    # Lcom/airbnb/android/models/Review;

    .prologue
    .line 57
    const-string/jumbo v0, "reviews"

    const/4 v1, 0x1

    const-string/jumbo v2, "review_rating"

    const-string/jumbo v3, "impression"

    invoke-static {p0, v2, v3}, Lcom/airbnb/android/analytics/ReviewsAnalytics;->makeReviewStrap(Lcom/airbnb/android/models/Review;Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 59
    return-void
.end method

.method public static trackSubmitNPS(Lcom/airbnb/android/models/Review;I)V
    .registers 6
    .param p0, "review"    # Lcom/airbnb/android/models/Review;
    .param p1, "score"    # I

    .prologue
    .line 87
    const-string/jumbo v0, "reviews"

    const/4 v1, 0x1

    const-string/jumbo v2, "nps"

    const-string/jumbo v3, "submit"

    invoke-static {p0, v2, v3}, Lcom/airbnb/android/analytics/ReviewsAnalytics;->makeReviewStrap(Lcom/airbnb/android/models/Review;Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    const-string/jumbo v3, "score"

    invoke-virtual {v2, v3, p1}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;I)Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 89
    return-void
.end method

.method public static trackSubmitReview(Lcom/airbnb/android/models/Review;)V
    .registers 5
    .param p0, "review"    # Lcom/airbnb/android/models/Review;

    .prologue
    .line 82
    const-string/jumbo v0, "reviews"

    const/4 v1, 0x1

    const-string/jumbo v2, "submit_review"

    const-string/jumbo v3, "submit_review_click"

    invoke-static {p0, v2, v3}, Lcom/airbnb/android/analytics/ReviewsAnalytics;->makeReviewStrap(Lcom/airbnb/android/models/Review;Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 84
    return-void
.end method

.method public static trackSummarySection(Lcom/airbnb/android/models/Review;)V
    .registers 5
    .param p0, "review"    # Lcom/airbnb/android/models/Review;

    .prologue
    .line 62
    const-string/jumbo v0, "reviews"

    const/4 v1, 0x1

    const-string/jumbo v2, "submit_review"

    const-string/jumbo v3, "impression"

    invoke-static {p0, v2, v3}, Lcom/airbnb/android/analytics/ReviewsAnalytics;->makeReviewStrap(Lcom/airbnb/android/models/Review;Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 64
    return-void
.end method

.method public static trackViewReview(Lcom/airbnb/android/models/Review;)V
    .registers 5
    .param p0, "review"    # Lcom/airbnb/android/models/Review;

    .prologue
    .line 112
    const-string/jumbo v0, "reviews"

    const/4 v1, 0x1

    const-string/jumbo v2, "double_blind_visible_dialog"

    const-string/jumbo v3, "view_review"

    invoke-static {p0, v2, v3}, Lcom/airbnb/android/analytics/ReviewsAnalytics;->makeReviewStrap(Lcom/airbnb/android/models/Review;Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 114
    return-void
.end method
