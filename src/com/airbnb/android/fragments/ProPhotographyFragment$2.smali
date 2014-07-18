.class Lcom/airbnb/android/fragments/ProPhotographyFragment$2;
.super Ljava/lang/Object;
.source "ProPhotographyFragment.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/ProPhotographyFragment;->preLoadListings()V
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
        "Lcom/airbnb/android/requests/MySpacesRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/ProPhotographyFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/ProPhotographyFragment;)V
    .registers 2

    .prologue
    .line 115
    iput-object p1, p0, Lcom/airbnb/android/fragments/ProPhotographyFragment$2;->this$0:Lcom/airbnb/android/fragments/ProPhotographyFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 2
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 125
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/MySpacesRequest;)V
    .registers 4
    .param p1, "response"    # Lcom/airbnb/android/requests/MySpacesRequest;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/airbnb/android/fragments/ProPhotographyFragment$2;->this$0:Lcom/airbnb/android/fragments/ProPhotographyFragment;

    iget-object v1, p1, Lcom/airbnb/android/requests/MySpacesRequest;->listings:Ljava/util/ArrayList;

    # setter for: Lcom/airbnb/android/fragments/ProPhotographyFragment;->mListings:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lcom/airbnb/android/fragments/ProPhotographyFragment;->access$702(Lcom/airbnb/android/fragments/ProPhotographyFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 120
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 115
    check-cast p1, Lcom/airbnb/android/requests/MySpacesRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/ProPhotographyFragment$2;->onResponse(Lcom/airbnb/android/requests/MySpacesRequest;)V

    return-void
.end method
