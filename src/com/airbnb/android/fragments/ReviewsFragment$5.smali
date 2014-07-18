.class Lcom/airbnb/android/fragments/ReviewsFragment$5;
.super Ljava/lang/Object;
.source "ReviewsFragment.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/ReviewsFragment;->addActionBarSpinnerIfNeeded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/airbnb/android/requests/RequestListener",
        "<",
        "Lcom/airbnb/android/requests/ReviewsRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/ReviewsFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/ReviewsFragment;)V
    .registers 2

    .prologue
    .line 216
    iput-object p1, p0, Lcom/airbnb/android/fragments/ReviewsFragment$5;->this$0:Lcom/airbnb/android/fragments/ReviewsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 2
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 226
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/ReviewsRequest;)V
    .registers 5
    .param p1, "response"    # Lcom/airbnb/android/requests/ReviewsRequest;

    .prologue
    .line 220
    iget-object v0, p0, Lcom/airbnb/android/fragments/ReviewsFragment$5;->this$0:Lcom/airbnb/android/fragments/ReviewsFragment;

    const/4 v1, 0x0

    iget v2, p1, Lcom/airbnb/android/requests/ReviewsRequest;->reviews_count:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    # invokes: Lcom/airbnb/android/fragments/ReviewsFragment;->inputReviewCount(Ljava/lang/Integer;Ljava/lang/Integer;)V
    invoke-static {v0, v1, v2}, Lcom/airbnb/android/fragments/ReviewsFragment;->access$300(Lcom/airbnb/android/fragments/ReviewsFragment;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 221
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 216
    check-cast p1, Lcom/airbnb/android/requests/ReviewsRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/ReviewsFragment$5;->onResponse(Lcom/airbnb/android/requests/ReviewsRequest;)V

    return-void
.end method
