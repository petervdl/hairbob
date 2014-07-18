.class public Lcom/airbnb/android/activities/AccountVerificationActivity;
.super Lcom/airbnb/android/activities/SolitAirActivity;
.source "AccountVerificationActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/activities/AccountVerificationActivity$VerificationType;
    }
.end annotation


# static fields
.field public static final EXTRA_VERIFICATION_TYPE:Ljava/lang/String; = "verification_type"


# instance fields
.field private mVerificationType:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/airbnb/android/activities/SolitAirActivity;-><init>()V

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lcom/airbnb/android/activities/AccountVerificationActivity;->mVerificationType:I

    return-void
.end method

.method public static intentForPayout(Landroid/content/Context;)Landroid/content/Intent;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/airbnb/android/activities/AccountVerificationActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 42
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "verification_type"

    sget-object v2, Lcom/airbnb/android/activities/AccountVerificationActivity$VerificationType;->Payout:Lcom/airbnb/android/activities/AccountVerificationActivity$VerificationType;

    invoke-virtual {v2}, Lcom/airbnb/android/activities/AccountVerificationActivity$VerificationType;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 43
    return-object v0
.end method

.method public static intentForVerificationType(Landroid/content/Context;I)Landroid/content/Intent;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "verificationType"    # I

    .prologue
    .line 35
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/airbnb/android/activities/AccountVerificationActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 36
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "verification_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 37
    return-object v0
.end method


# virtual methods
.method public onBeginClick()V
    .registers 3

    .prologue
    .line 62
    iget v0, p0, Lcom/airbnb/android/activities/AccountVerificationActivity;->mVerificationType:I

    invoke-static {v0}, Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment;->newInstance(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/airbnb/android/activities/AccountVerificationActivity;->showFragment(Landroid/support/v4/app/Fragment;Z)V

    .line 63
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 50
    invoke-super {p0, p1}, Lcom/airbnb/android/activities/SolitAirActivity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    const v0, 0x7f0e0748

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/airbnb/android/activities/AccountVerificationActivity;->setupActionBar(I[Ljava/lang/Object;)Landroid/app/ActionBar;

    .line 54
    invoke-virtual {p0}, Lcom/airbnb/android/activities/AccountVerificationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "verification_type"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/airbnb/android/activities/AccountVerificationActivity;->mVerificationType:I

    .line 56
    if-nez p1, :cond_22

    .line 57
    invoke-static {}, Lcom/airbnb/android/fragments/AccountVerificationWelcomeFragment;->newInstance()Landroid/support/v4/app/Fragment;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/airbnb/android/activities/AccountVerificationActivity;->showFragment(Landroid/support/v4/app/Fragment;Z)V

    .line 59
    :cond_22
    return-void
.end method

.method public phoneNumberSelected(J)V
    .registers 5
    .param p1, "phoneNumberId"    # J

    .prologue
    .line 66
    invoke-static {p1, p2}, Lcom/airbnb/android/fragments/AccountVerificationPhoneCodeFragment;->newInstance(J)Landroid/support/v4/app/Fragment;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/airbnb/android/activities/AccountVerificationActivity;->showFragment(Landroid/support/v4/app/Fragment;Z)V

    .line 67
    return-void
.end method

.method public submitPhoneCode(JLjava/lang/String;)V
    .registers 6
    .param p1, "phoneNumberId"    # J
    .param p3, "code"    # Ljava/lang/String;

    .prologue
    .line 70
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/airbnb/android/activities/AccountVerificationActivity;->showLoader(Z)V

    .line 72
    new-instance v0, Lcom/airbnb/android/requests/PutSecurityCheckRequest;

    new-instance v1, Lcom/airbnb/android/activities/AccountVerificationActivity$1;

    invoke-direct {v1, p0}, Lcom/airbnb/android/activities/AccountVerificationActivity$1;-><init>(Lcom/airbnb/android/activities/AccountVerificationActivity;)V

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/airbnb/android/requests/PutSecurityCheckRequest;-><init>(JLjava/lang/String;Lcom/airbnb/android/requests/RequestListener;)V

    invoke-virtual {v0}, Lcom/airbnb/android/requests/PutSecurityCheckRequest;->execute()V

    .line 91
    return-void
.end method
