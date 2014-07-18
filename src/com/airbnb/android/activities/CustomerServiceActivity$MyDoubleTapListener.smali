.class Lcom/airbnb/android/activities/CustomerServiceActivity$MyDoubleTapListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "CustomerServiceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/activities/CustomerServiceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyDoubleTapListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/activities/CustomerServiceActivity;


# direct methods
.method private constructor <init>(Lcom/airbnb/android/activities/CustomerServiceActivity;)V
    .registers 2

    .prologue
    .line 75
    iput-object p1, p0, Lcom/airbnb/android/activities/CustomerServiceActivity$MyDoubleTapListener;->this$0:Lcom/airbnb/android/activities/CustomerServiceActivity;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/airbnb/android/activities/CustomerServiceActivity;Lcom/airbnb/android/activities/CustomerServiceActivity$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/airbnb/android/activities/CustomerServiceActivity;
    .param p2, "x1"    # Lcom/airbnb/android/activities/CustomerServiceActivity$1;

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/airbnb/android/activities/CustomerServiceActivity$MyDoubleTapListener;-><init>(Lcom/airbnb/android/activities/CustomerServiceActivity;)V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .registers 7
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 79
    :try_start_0
    iget-object v2, p0, Lcom/airbnb/android/activities/CustomerServiceActivity$MyDoubleTapListener;->this$0:Lcom/airbnb/android/activities/CustomerServiceActivity;

    invoke-virtual {v2}, Lcom/airbnb/android/activities/CustomerServiceActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/airbnb/android/activities/CustomerServiceActivity$MyDoubleTapListener;->this$0:Lcom/airbnb/android/activities/CustomerServiceActivity;

    invoke-virtual {v3}, Lcom/airbnb/android/activities/CustomerServiceActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 80
    .local v1, "pinfo":Landroid/content/pm/PackageInfo;
    iget-object v2, p0, Lcom/airbnb/android/activities/CustomerServiceActivity$MyDoubleTapListener;->this$0:Lcom/airbnb/android/activities/CustomerServiceActivity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Version Code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_31
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_31} :catch_33

    .line 85
    .end local v1    # "pinfo":Landroid/content/pm/PackageInfo;
    :goto_31
    const/4 v2, 0x1

    return v2

    .line 81
    :catch_33
    move-exception v0

    .line 83
    .local v0, "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_31
.end method
