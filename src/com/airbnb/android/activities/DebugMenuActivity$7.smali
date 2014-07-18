.class Lcom/airbnb/android/activities/DebugMenuActivity$7;
.super Ljava/lang/Object;
.source "DebugMenuActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/activities/DebugMenuActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/activities/DebugMenuActivity;


# direct methods
.method constructor <init>(Lcom/airbnb/android/activities/DebugMenuActivity;)V
    .registers 2

    .prologue
    .line 248
    iput-object p1, p0, Lcom/airbnb/android/activities/DebugMenuActivity$7;->this$0:Lcom/airbnb/android/activities/DebugMenuActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 251
    iget-object v0, p0, Lcom/airbnb/android/activities/DebugMenuActivity$7;->this$0:Lcom/airbnb/android/activities/DebugMenuActivity;

    invoke-static {v0}, Lcom/airbnb/android/utils/SharedPrefsHelper;->resetCompanionOnboarding(Landroid/content/Context;)V

    .line 252
    iget-object v0, p0, Lcom/airbnb/android/activities/DebugMenuActivity$7;->this$0:Lcom/airbnb/android/activities/DebugMenuActivity;

    const-string/jumbo v1, "Reset Companion Onboarding"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 253
    return-void
.end method
