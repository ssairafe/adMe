import React from 'react';
import AppContext from './context';
import LandingPage from './containers/landing-page';
import CompanyDashboard from './containers/company-dashboard';
import CreateCampaign from './containers/create-campaign.jsx';
import CreatorPortfolio from './containers/creator-portfolio';
import UploadSubmission from './containers/upload-submission';
import NavBar from './components/nav-bar';
import ViewSubmissionDetails from './containers/submission-details';
<<<<<<< HEAD
import CompanyHeader from './containers/company-header.jsx';
=======
import SwitchUserPage from './containers/switch-user-page';
>>>>>>> 71db3c7ecc08aa137cdd3b10e99c74f900ee22cc

export default class App extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      view: {
        name: 'settings',
        params: {}
      },
      currentUser: {},
      userOptions: {}
    };
    this.setView = this.setView.bind(this);
    this.setUser = this.setUser.bind(this);
  }
  componentDidMount() {
    fetch('http://localhost:3000/api/user')
      .then(res => res.json())
      .then(res => {
        var newUserOptionsArray = [];
        res.map(currentArray => {
          newUserOptionsArray.push(currentArray);
        });
        this.setState({ userOptions: newUserOptionsArray });
      });
  }

  setUser(userID) {
    this.setState({ currentUser: this.state.userOptions[userID] });
  }

  setView(name, params) {
    this.setState({
      view: {
        name: name,
        params: params
      }
    });
  }

  renderView() {
    switch (this.state.view.name) {
      case 'landing-page':
        return <LandingPage />;
      case 'company-dashboard':
        return <CompanyDashboard/>;
      case 'create-campaign':
        return <CreateCampaign />;
      case 'creator-portfolio':
        return <CreatorPortfolio />;
      case 'company-header':
        return <CompanyHeader/>;
      case 'upload-submission':
        return <UploadSubmission />;
      case 'submission-details':
        return <ViewSubmissionDetails pageID={this.state.view.params.submissionID}/>;
      case 'settings':
        return <SwitchUserPage setUser = {this.setUser}/>;
    }
  }

  render() {
    const appContext = {
      setView: this.setView,
      setUser: this.setUser,
      currentUser: this.state.currentUser
    };

    return (
      <AppContext.Provider value={appContext} >

        <NavBar />
        {this.renderView()}

      </AppContext.Provider>
    );
  }

}
