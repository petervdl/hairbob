.class Lcom/airbnb/android/activities/AppIntroFtueActivity$1;
.super Ljava/lang/Object;
.source "AppIntroFtueActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/activities/AppIntroFtueActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/activities/AppIntroFtueActivity;


# direct methods
.method constructor <init>(Lcom/airbnb/android/activities/AppIntroFtueActivity;)V
    .registers 2

    .prologue
    .line 46
    iput-object p1, p0, Lcom/airbnb/android/activities/AppIntroFtueActivity$1;->this$0:Lcom/airbnb/android/activities/AppIntroFtueActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/airbnb/android/activities/AppIntroFtueActivity$1;->this$0:Lcom/airbnb/android/activities/AppIntroFtueActivity;

    invoke-virtual {v0}, Lcom/airbnb/android/activities/AppIntroFtueActivity;->finish()V

    .line 51
    iget-object v0, p0, Lcom/airbnb/android/activities/AppIntroFtueActivity$1;->this$0:Lcom/airbnb/android/activities/AppIntroFtueActivity;

    iget v0, v0, Lcom/airbnb/android/activities/AppIntroFtueActivity;->mCurrPage:I

    invoke-static {v0}, Lcom/airbnb/android/analytics/FtueAnalytics;->trackAppIntroSignin(I)V

    .line 52
    iget-object v0, p0, Lcom/airbnb/android/activities/AppIntroFtueActivity$1;->this$0:Lcom/airbnb/android/activities/AppIntroFtueActivity;

    iget-object v1, p0, Lcom/airbnb/android/activities/AppIntroFtueActivity$1;->this$0:Lcom/airbnb/android/activities/AppIntroFtueActivity;

    invoke-static {v1}, Lcom/airbnb/android/activities/SignInActivity;->intentForDefault(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0x191

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/activities/AppIntroFtueActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 53
    return-void
.end method
