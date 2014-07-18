.class Lcom/airbnb/android/fragments/AccountSettingsFragment$11;
.super Ljava/lang/Object;
.source "AccountSettingsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/AccountSettingsFragment;->setupGoogleSettingsIfNeeded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/AccountSettingsFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/AccountSettingsFragment;)V
    .registers 2

    .prologue
    .line 346
    iput-object p1, p0, Lcom/airbnb/android/fragments/AccountSettingsFragment$11;->this$0:Lcom/airbnb/android/fragments/AccountSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 350
    iget-object v0, p0, Lcom/airbnb/android/fragments/AccountSettingsFragment$11;->this$0:Lcom/airbnb/android/fragments/AccountSettingsFragment;

    # getter for: Lcom/airbnb/android/fragments/AccountSettingsFragment;->mGoogleConnected:Z
    invoke-static {v0}, Lcom/airbnb/android/fragments/AccountSettingsFragment;->access$800(Lcom/airbnb/android/fragments/AccountSettingsFragment;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 351
    iget-object v0, p0, Lcom/airbnb/android/fragments/AccountSettingsFragment$11;->this$0:Lcom/airbnb/android/fragments/AccountSettingsFragment;

    # invokes: Lcom/airbnb/android/fragments/AccountSettingsFragment;->showDisconnectConfirmationDialog()V
    invoke-static {v0}, Lcom/airbnb/android/fragments/AccountSettingsFragment;->access$900(Lcom/airbnb/android/fragments/AccountSettingsFragment;)V

    .line 355
    :goto_d
    return-void

    .line 353
    :cond_e
    iget-object v0, p0, Lcom/airbnb/android/fragments/AccountSettingsFragment$11;->this$0:Lcom/airbnb/android/fragments/AccountSettingsFragment;

    # invokes: Lcom/airbnb/android/fragments/AccountSettingsFragment;->goToVerifyIdFlow()V
    invoke-static {v0}, Lcom/airbnb/android/fragments/AccountSettingsFragment;->access$1000(Lcom/airbnb/android/fragments/AccountSettingsFragment;)V

    goto :goto_d
.end method
