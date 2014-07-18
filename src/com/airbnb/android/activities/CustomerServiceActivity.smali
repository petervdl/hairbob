.class public Lcom/airbnb/android/activities/CustomerServiceActivity;
.super Lcom/airbnb/android/activities/AirActivity;
.source "CustomerServiceActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/activities/CustomerServiceActivity$MyDoubleTapListener;
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String; = "CustomerServiceActivity"


# instance fields
.field private mDoubleTapDetector:Landroid/support/v4/view/GestureDetectorCompat;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/airbnb/android/activities/AirActivity;-><init>()V

    .line 75
    return-void
.end method

.method static synthetic access$100(Lcom/airbnb/android/activities/CustomerServiceActivity;)Landroid/support/v4/view/GestureDetectorCompat;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/activities/CustomerServiceActivity;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/airbnb/android/activities/CustomerServiceActivity;->mDoubleTapDetector:Landroid/support/v4/view/GestureDetectorCompat;

    return-object v0
.end method

.method public static intentForCustomerService(Landroid/content/Context;)Landroid/content/Intent;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    const-string/jumbo v1, "https://m.airbnb.com/help?hide_nav=true&locale=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0e005a

    invoke-static {p0, v1, v2}, Lcom/airbnb/android/activities/WebViewActivity;->intentForUrlAndTitle(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 35
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/airbnb/android/activities/CustomerServiceActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v0, v1}, Lcom/airbnb/android/activities/WebViewActivity;->addBackupIntent(Landroid/content/Intent;Landroid/content/Intent;)Landroid/content/Intent;

    .line 36
    return-object v0
.end method

.method private setupViews()V
    .registers 7

    .prologue
    const v5, 0x7f08002c

    .line 49
    invoke-static {p0}, Lcom/airbnb/android/utils/BuildHelper;->hasTelephony(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_19

    .line 50
    invoke-virtual {p0, v5}, Lcom/airbnb/android/activities/CustomerServiceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 51
    .local v0, "callButton":Landroid/widget/Button;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 52
    const v2, -0x777778

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 55
    .end local v0    # "callButton":Landroid/widget/Button;
    :cond_19
    new-instance v2, Landroid/support/v4/view/GestureDetectorCompat;

    new-instance v3, Lcom/airbnb/android/activities/CustomerServiceActivity$MyDoubleTapListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/airbnb/android/activities/CustomerServiceActivity$MyDoubleTapListener;-><init>(Lcom/airbnb/android/activities/CustomerServiceActivity;Lcom/airbnb/android/activities/CustomerServiceActivity$1;)V

    invoke-direct {v2, p0, v3}, Landroid/support/v4/view/GestureDetectorCompat;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v2, p0, Lcom/airbnb/android/activities/CustomerServiceActivity;->mDoubleTapDetector:Landroid/support/v4/view/GestureDetectorCompat;

    .line 57
    const v2, 0x7f080028

    invoke-virtual {p0, v2}, Lcom/airbnb/android/activities/CustomerServiceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 58
    .local v1, "v":Landroid/widget/ImageView;
    new-instance v2, Lcom/airbnb/android/activities/CustomerServiceActivity$1;

    invoke-direct {v2, p0}, Lcom/airbnb/android/activities/CustomerServiceActivity$1;-><init>(Lcom/airbnb/android/activities/CustomerServiceActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 65
    invoke-virtual {p0, v5}, Lcom/airbnb/android/activities/CustomerServiceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 66
    .restart local v0    # "callButton":Landroid/widget/Button;
    new-instance v2, Lcom/airbnb/android/activities/CustomerServiceActivity$2;

    invoke-direct {v2, p0}, Lcom/airbnb/android/activities/CustomerServiceActivity$2;-><init>(Lcom/airbnb/android/activities/CustomerServiceActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 41
    invoke-super {p0, p1}, Lcom/airbnb/android/activities/AirActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const v0, 0x7f030005

    invoke-virtual {p0, v0}, Lcom/airbnb/android/activities/CustomerServiceActivity;->setContentView(I)V

    .line 44
    const v0, 0x7f0e005a

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/airbnb/android/activities/CustomerServiceActivity;->setupActionBar(I[Ljava/lang/Object;)Landroid/app/ActionBar;

    .line 45
    invoke-direct {p0}, Lcom/airbnb/android/activities/CustomerServiceActivity;->setupViews()V

    .line 46
    return-void
.end method
