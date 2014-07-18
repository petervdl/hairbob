.class Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment$5;
.super Ljava/lang/Object;
.source "CompanionPlaceFragment.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;->fetchCompanionPlace()V
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
        "Lcom/airbnb/android/requests/LocalCompanionPlaceRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;)V
    .registers 2

    .prologue
    .line 256
    iput-object p1, p0, Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment$5;->this$0:Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 7
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 267
    invoke-static {p1}, Lcom/airbnb/android/requests/AirbnbRequest;->parseErrorMessage(Lcom/android/volley/VolleyError;)Ljava/lang/String;

    move-result-object v0

    .line 269
    .local v0, "errorMessage":Ljava/lang/String;
    invoke-static {}, Lcom/airbnb/android/fragments/ZenDialog;->Builder()Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v1

    const v2, 0x7f0e01ac

    invoke-virtual {v1, v2}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withTitle(I)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1e

    iget-object v2, p0, Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment$5;->this$0:Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;

    const v3, 0x7f0e0398

    invoke-virtual {v2, v3}, Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .end local v0    # "errorMessage":Ljava/lang/String;
    :cond_1e
    invoke-virtual {v1, v0}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withBodyText(Ljava/lang/String;)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v1

    const v2, 0x7f0e0563

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withSingleButton(IILandroid/support/v4/app/Fragment;)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->create()Lcom/airbnb/android/fragments/ZenDialog;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment$5;->this$0:Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;

    invoke-virtual {v2}, Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string/jumbo v3, "dialog_error"

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/fragments/ZenDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 275
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/LocalCompanionPlaceRequest;)V
    .registers 4
    .param p1, "response"    # Lcom/airbnb/android/requests/LocalCompanionPlaceRequest;

    .prologue
    .line 259
    iget-object v0, p0, Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment$5;->this$0:Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;

    iget-object v1, p1, Lcom/airbnb/android/requests/LocalCompanionPlaceRequest;->companionPlace:Lcom/airbnb/android/models/localcompanion/CompanionPlace;

    # setter for: Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;->mCompanionPlace:Lcom/airbnb/android/models/localcompanion/CompanionPlace;
    invoke-static {v0, v1}, Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;->access$002(Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;Lcom/airbnb/android/models/localcompanion/CompanionPlace;)Lcom/airbnb/android/models/localcompanion/CompanionPlace;

    .line 260
    iget-object v0, p0, Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment$5;->this$0:Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;

    # invokes: Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;->setupDetails()V
    invoke-static {v0}, Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;->access$200(Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;)V

    .line 261
    iget-object v0, p0, Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment$5;->this$0:Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;

    # invokes: Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;->setupOpeningHours()V
    invoke-static {v0}, Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;->access$300(Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;)V

    .line 262
    iget-object v0, p0, Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment$5;->this$0:Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;

    # invokes: Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;->setupPhotos()V
    invoke-static {v0}, Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;->access$400(Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;)V

    .line 263
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 256
    check-cast p1, Lcom/airbnb/android/requests/LocalCompanionPlaceRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment$5;->onResponse(Lcom/airbnb/android/requests/LocalCompanionPlaceRequest;)V

    return-void
.end method
