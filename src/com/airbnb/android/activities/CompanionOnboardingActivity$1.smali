.class Lcom/airbnb/android/activities/CompanionOnboardingActivity$1;
.super Ljava/lang/Object;
.source "CompanionOnboardingActivity.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/activities/CompanionOnboardingActivity;->uploadPreferences()V
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
        "Lcom/airbnb/android/requests/LocalCompanionOnboardingRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/activities/CompanionOnboardingActivity;


# direct methods
.method constructor <init>(Lcom/airbnb/android/activities/CompanionOnboardingActivity;)V
    .registers 2

    .prologue
    .line 177
    iput-object p1, p0, Lcom/airbnb/android/activities/CompanionOnboardingActivity$1;->this$0:Lcom/airbnb/android/activities/CompanionOnboardingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 7
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    const/4 v4, 0x0

    .line 185
    iget-object v1, p0, Lcom/airbnb/android/activities/CompanionOnboardingActivity$1;->this$0:Lcom/airbnb/android/activities/CompanionOnboardingActivity;

    invoke-virtual {v1, v4}, Lcom/airbnb/android/activities/CompanionOnboardingActivity;->showLoader(Z)V

    .line 187
    invoke-static {p1}, Lcom/airbnb/android/requests/AirbnbRequest;->parseErrorMessage(Lcom/android/volley/VolleyError;)Ljava/lang/String;

    move-result-object v0

    .line 189
    .local v0, "errorMessage":Ljava/lang/String;
    invoke-static {}, Lcom/airbnb/android/fragments/ZenDialog;->Builder()Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v1

    const v2, 0x7f0e01ac

    invoke-virtual {v1, v2}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withTitle(I)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_24

    iget-object v2, p0, Lcom/airbnb/android/activities/CompanionOnboardingActivity$1;->this$0:Lcom/airbnb/android/activities/CompanionOnboardingActivity;

    const v3, 0x7f0e0393

    invoke-virtual {v2, v3}, Lcom/airbnb/android/activities/CompanionOnboardingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .end local v0    # "errorMessage":Ljava/lang/String;
    :cond_24
    invoke-virtual {v1, v0}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withBodyText(Ljava/lang/String;)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v1

    const v2, 0x7f0e0563

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v4, v3}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withSingleButton(IILandroid/support/v4/app/Fragment;)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->create()Lcom/airbnb/android/fragments/ZenDialog;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/activities/CompanionOnboardingActivity$1;->this$0:Lcom/airbnb/android/activities/CompanionOnboardingActivity;

    invoke-virtual {v2}, Lcom/airbnb/android/activities/CompanionOnboardingActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string/jumbo v3, "dialog_error"

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/fragments/ZenDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 195
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/LocalCompanionOnboardingRequest;)V
    .registers 3
    .param p1, "response"    # Lcom/airbnb/android/requests/LocalCompanionOnboardingRequest;

    .prologue
    .line 180
    iget-object v0, p0, Lcom/airbnb/android/activities/CompanionOnboardingActivity$1;->this$0:Lcom/airbnb/android/activities/CompanionOnboardingActivity;

    # invokes: Lcom/airbnb/android/activities/CompanionOnboardingActivity;->completeOnboarding()V
    invoke-static {v0}, Lcom/airbnb/android/activities/CompanionOnboardingActivity;->access$000(Lcom/airbnb/android/activities/CompanionOnboardingActivity;)V

    .line 181
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 177
    check-cast p1, Lcom/airbnb/android/requests/LocalCompanionOnboardingRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/activities/CompanionOnboardingActivity$1;->onResponse(Lcom/airbnb/android/requests/LocalCompanionOnboardingRequest;)V

    return-void
.end method
