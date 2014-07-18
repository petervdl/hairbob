.class Lcom/airbnb/android/activities/SignInActivity$5;
.super Ljava/lang/Object;
.source "SignInActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/activities/SignInActivity;->requestGooglePermissions(Landroid/content/Intent;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/activities/SignInActivity;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$requestCodeGooglePermissions:I


# direct methods
.method constructor <init>(Lcom/airbnb/android/activities/SignInActivity;Landroid/content/Intent;I)V
    .registers 4

    .prologue
    .line 737
    iput-object p1, p0, Lcom/airbnb/android/activities/SignInActivity$5;->this$0:Lcom/airbnb/android/activities/SignInActivity;

    iput-object p2, p0, Lcom/airbnb/android/activities/SignInActivity$5;->val$intent:Landroid/content/Intent;

    iput p3, p0, Lcom/airbnb/android/activities/SignInActivity$5;->val$requestCodeGooglePermissions:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 741
    iget-object v0, p0, Lcom/airbnb/android/activities/SignInActivity$5;->this$0:Lcom/airbnb/android/activities/SignInActivity;

    const/4 v1, 0x1

    # setter for: Lcom/airbnb/android/activities/SignInActivity;->mGooglePermissionsSeen:Z
    invoke-static {v0, v1}, Lcom/airbnb/android/activities/SignInActivity;->access$702(Lcom/airbnb/android/activities/SignInActivity;Z)Z

    .line 742
    iget-object v0, p0, Lcom/airbnb/android/activities/SignInActivity$5;->this$0:Lcom/airbnb/android/activities/SignInActivity;

    iget-object v1, p0, Lcom/airbnb/android/activities/SignInActivity$5;->val$intent:Landroid/content/Intent;

    iget v2, p0, Lcom/airbnb/android/activities/SignInActivity$5;->val$requestCodeGooglePermissions:I

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/activities/SignInActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 743
    return-void
.end method
