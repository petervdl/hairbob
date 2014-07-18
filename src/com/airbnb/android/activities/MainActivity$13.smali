.class Lcom/airbnb/android/activities/MainActivity$13;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/activities/MainActivity;->createUpdateDialog(Ljava/lang/String;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/activities/MainActivity;

.field final synthetic val$cancelCount:I

.field final synthetic val$cancelCountKey:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/airbnb/android/activities/MainActivity;Ljava/lang/String;I)V
    .registers 4

    .prologue
    .line 1511
    iput-object p1, p0, Lcom/airbnb/android/activities/MainActivity$13;->this$0:Lcom/airbnb/android/activities/MainActivity;

    iput-object p2, p0, Lcom/airbnb/android/activities/MainActivity$13;->val$cancelCountKey:Ljava/lang/String;

    iput p3, p0, Lcom/airbnb/android/activities/MainActivity$13;->val$cancelCount:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CommitPrefEdits"
        }
    .end annotation

    .prologue
    .line 1516
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "App_Open"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "view_upgrade_dialog"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "click_cancel_upgrade"

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/airbnb/android/services/AirEventLogger;->track([Ljava/lang/String;)V

    .line 1517
    iget-object v1, p0, Lcom/airbnb/android/activities/MainActivity$13;->this$0:Lcom/airbnb/android/activities/MainActivity;

    invoke-static {v1}, Lcom/airbnb/android/AirbnbApi;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/AirbnbApi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/AirbnbApi;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/activities/MainActivity$13;->val$cancelCountKey:Ljava/lang/String;

    iget v3, p0, Lcom/airbnb/android/activities/MainActivity$13;->val$cancelCount:I

    add-int/lit8 v3, v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1518
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1519
    iget-object v1, p0, Lcom/airbnb/android/activities/MainActivity$13;->this$0:Lcom/airbnb/android/activities/MainActivity;

    const/4 v2, 0x0

    # setter for: Lcom/airbnb/android/activities/MainActivity;->mUpgradeDialog:Landroid/app/Dialog;
    invoke-static {v1, v2}, Lcom/airbnb/android/activities/MainActivity;->access$1002(Lcom/airbnb/android/activities/MainActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 1520
    return-void
.end method
