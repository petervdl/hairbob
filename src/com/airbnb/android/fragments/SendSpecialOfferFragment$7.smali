.class Lcom/airbnb/android/fragments/SendSpecialOfferFragment$7;
.super Ljava/lang/Object;
.source "SendSpecialOfferFragment.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->fetchListingCalendarIfNeeded()V
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
        "Lcom/airbnb/android/requests/CalendarRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/SendSpecialOfferFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/SendSpecialOfferFragment;)V
    .registers 2

    .prologue
    .line 324
    iput-object p1, p0, Lcom/airbnb/android/fragments/SendSpecialOfferFragment$7;->this$0:Lcom/airbnb/android/fragments/SendSpecialOfferFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 3
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 333
    iget-object v0, p0, Lcom/airbnb/android/fragments/SendSpecialOfferFragment$7;->this$0:Lcom/airbnb/android/fragments/SendSpecialOfferFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/android/requests/AirbnbRequest;->toastGenericVolleyError(Landroid/content/Context;)V

    .line 334
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/CalendarRequest;)V
    .registers 2
    .param p1, "response"    # Lcom/airbnb/android/requests/CalendarRequest;

    .prologue
    .line 329
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 324
    check-cast p1, Lcom/airbnb/android/requests/CalendarRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/SendSpecialOfferFragment$7;->onResponse(Lcom/airbnb/android/requests/CalendarRequest;)V

    return-void
.end method
