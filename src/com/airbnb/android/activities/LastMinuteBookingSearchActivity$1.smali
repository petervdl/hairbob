.class Lcom/airbnb/android/activities/LastMinuteBookingSearchActivity$1;
.super Ljava/lang/Object;
.source "LastMinuteBookingSearchActivity.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/activities/LastMinuteBookingSearchActivity;->prefetchLastMinuteDealsForTomorrow()V
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
        "Lcom/airbnb/android/requests/SearchRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/activities/LastMinuteBookingSearchActivity;


# direct methods
.method constructor <init>(Lcom/airbnb/android/activities/LastMinuteBookingSearchActivity;)V
    .registers 2

    .prologue
    .line 85
    iput-object p1, p0, Lcom/airbnb/android/activities/LastMinuteBookingSearchActivity$1;->this$0:Lcom/airbnb/android/activities/LastMinuteBookingSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 2
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 94
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/SearchRequest;)V
    .registers 2
    .param p1, "response"    # Lcom/airbnb/android/requests/SearchRequest;

    .prologue
    .line 89
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 85
    check-cast p1, Lcom/airbnb/android/requests/SearchRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/activities/LastMinuteBookingSearchActivity$1;->onResponse(Lcom/airbnb/android/requests/SearchRequest;)V

    return-void
.end method
