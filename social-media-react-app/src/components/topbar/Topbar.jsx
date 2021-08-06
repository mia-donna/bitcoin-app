import "./topbar.css";
import { Search, Person } from "@material-ui/icons";
import PersonIcon from '@material-ui/icons/Person';

export default function Topbar() {
    return (
        <div className="topbarContainer">
            <div className="topbarLeft">
              <span classname="logo"> Lamasocial</span>
            </div>
            <div className="topbarCenter">
              <div className="searchbar">
                  <Search />
                  <input placeholder="Serach for a friend, post or video" className="searchInput"/>
              </div>
            </div> 
            <div className="topbarRight">
               <div className="topbarLinks">
                   <span classname="topbarLink"> Lamasocial</span>
                   <span classname="topbarLink"> Timeline</span>
               </div>
               <div className="topbarIcons">
                 <div className="topbarIconItem">
                  <Person />
                  <span className="topbarIconBage">1</span>
                </div>
               </div>
            </div>
        </div>
    );
}


